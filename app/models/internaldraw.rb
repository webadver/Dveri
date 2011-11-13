class Internaldraw < ActiveRecord::Base

    has_many :internalpanel_internaldraws
    has_many :internalpanels, :through => :internalpanel_internaldraws


    has_attached_file :photo,
                    :url => "/assets/internaldraws/photo/:id/:style/:basename.:extension"
    has_attached_file :image,
                    :url => "/assets/internaldraws/images/:id/:style/:basename.:extension"

end
