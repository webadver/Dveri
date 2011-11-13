class Finding < ActiveRecord::Base


  has_attached_file :photo,
                    :url => "/assets/findings/photo/:id/:style/:basename.:extension"
  has_attached_file :image,
                    :url => "/assets/findings/images/:id/:style/:basename.:extension"
end
