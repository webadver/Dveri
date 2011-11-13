class Internalpanel < ActiveRecord::Base

  has_many :internalpanel_internalcolors
  has_many :internalcolors, :through => :internalpanel_internalcolors


  has_many :internalpanel_internaldraws
  has_many :internaldraws, :through => :internalpanel_internaldraws

    has_attached_file :photo,
                    :url => "/assets/internalpanels/photo/:id/:style/:basename.:extension"
    has_attached_file :image,
                    :url => "/assets/internalpanels/images/:id/:style/:basename.:extension"
end
