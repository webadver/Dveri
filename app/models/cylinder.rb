class Cylinder < ActiveRecord::Base

  has_attached_file :photo,
                    :url => "/assets/cylinders/photo/:id/:style/:basename.:extension"
  has_attached_file :image,
                    :url => "/assets/cylinders/images/:id/:style/:basename.:extension"
end
