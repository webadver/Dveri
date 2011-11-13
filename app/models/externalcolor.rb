class Externalcolor < ActiveRecord::Base

    has_many :externalpanel_externalcolors
    has_many :externalpanels, :through => :externalpanel_externalcolors


  has_attached_file :photo,
                    :url => "/assets/externalcolors/photo/:id/:style/:basename.:extension"
  has_attached_file :image,
                    :url => "/assets/externalcolors/images/:id/:style/:basename.:extension"
end
