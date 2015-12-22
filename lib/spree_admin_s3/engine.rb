module SpreeAdminS3
  class Engine < Rails::Engine
    isolate_namespace Spree
    engine_name 'spree_admin_s3'

    initializer 'spree_admin_s3.preferences', before: :load_config_initializers do
      SpreeAdminS3::Config = Spree::S3Setting.new

      if Spree::Config.has_preference? :show_raw_product_description
        Spree::Config[:show_raw_product_description] = SpreeAdminS3::Config[:enabled]
      end
    end

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      cache_klasses = %W(#{config.root}/app/**/*_decorator*.rb)
      Dir.glob(cache_klasses) do |klass|
        Rails.configuration.cache_classes ? require(klass) : load(klass)
      end
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end
