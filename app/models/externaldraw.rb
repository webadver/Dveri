class Externaldraw < ActiveRecord::Base

    has_many :externalpanel_externaldraws
    has_many :externalpanels, :through => :externalpanel_externaldraws

    has_attached_file :photo,
                    :url => "/assets/externaldraw/photo/:id/:style/:basename.:extension"
    has_attached_file :image,
                    :url => "/assets/externaldraw/images/:id/:style/:basename.:extension"

end
