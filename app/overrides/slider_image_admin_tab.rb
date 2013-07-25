Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "add_banner_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:sliders, :icon => 'icon-camera') %>",
                     :disabled => false)