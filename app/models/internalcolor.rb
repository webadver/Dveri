class Internalcolor < ActiveRecord::Base

    has_many :internalpanel_internalcolors
    has_many :internalpanels, :through => :internalpanel_internalcolors

    has_attached_file :photo,
                    :url => "/assets/internalcolors/photo/:id/:style/:basename.:extension"
    has_attached_file :image,
                    :url => "/assets/internalcolors/images/:id/:style/:basename.:extension"
end
