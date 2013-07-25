class Spree::Slider < ActiveRecord::Base
  attr_accessible :image, :visible, :sequence

  Paperclip.interpolates(:image_id) { |attachment, style|
     attachment.instance.id
  }

  if Spree::Config.use_s3
    has_attached_file :image, :styles => { 
      :large => "1200x1200>", 
      :thumb => "400x400>" 
    },
    :storage => :s3,
    :s3_credentials => { 
      :access_key_id => Spree::Config.s3_access_key,                 
      :secret_access_key => Spree::Config.s3_secret 
    },
    :bucket => Spree::Config.s3_bucket,
    :path => "/slider/images/:image_id/:style.:extension",
    :url => Spree::Config.attachment_url
  else
    has_attached_file :image, :styles => { 
      :large => "1200x1200>", 
      :thumb => "400x400>" 
    }
  end


end
