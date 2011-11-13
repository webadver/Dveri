class Externalpanel < ActiveRecord::Base

  has_many :externalpanel_externalcolors
  has_many :externalcolors, :through => :externalpanel_externalcolors


  has_many :externalpanel_externaldraws
  has_many :externaldraws, :through => :externalpanel_externaldraws


    has_attached_file :photo,
                    :url => "/assets/externalpanels/photo/:id/:style/:basename.:extension"
    has_attached_file :image,
                    :url => "/assets/externalpanels/images/:id/:style/:basename.:extension"

end
