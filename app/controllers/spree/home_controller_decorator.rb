Spree::HomeController.class_eval do

  # respond_override :index => { :html =>
  #   { :success => lambda { @slider_images = Spree::Slider.all } } }
end