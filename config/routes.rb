Spree::Core::Engine.add_routes do
  namespace :admin do
    resource :s3_settings, only: [:edit, :update]
  end
end
