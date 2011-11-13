class Doplock < ActiveRecord::Base


  has_attached_file :photo,
                    :url => "/assets/doplocks/photo/:id/:style/:basename.:extension"
  has_attached_file :image,
                    :url => "/assets/doplocks/images/:id/:style/:basename.:extension"
end
