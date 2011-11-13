class Jamb < ActiveRecord::Base

  has_attached_file :photo,
                    :url => "/assets/jamb/photo/:id/:style/:basename.:extension"
  has_attached_file :image,
                    :url => "/assets/jamb/image/:id/:style/:basename.:extension"

end
