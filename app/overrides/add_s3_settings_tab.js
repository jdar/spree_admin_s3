Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                     :name => "add_s3_settings_tab",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
                     :text => "<li<%== ' class=\"active\"' if controller.controller_name == 's3_settings' %>><%= link_to 'S3 Settings', admin_s3_settings_path %></li>")
