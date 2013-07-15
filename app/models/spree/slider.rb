class Spree::Slider < ActiveRecord::Base
  attr_accessible :image, :visible, :sequence
  has_attached_file :image, :styles => { :large => "1200x1200", :thumb => "400x400>" }#, :default_url => "/images/:style/missing.png"

end
