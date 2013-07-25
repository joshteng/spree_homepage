Deface::Override.new(:virtual_path  => "spree/layouts/spree_application",
                     :insert_bottom => "div#wrapper",
                     :partial       => "../views/spree/store/home/slider",
                     :name          => "add_slider_to_homepage")