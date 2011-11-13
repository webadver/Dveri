class Lock < ActiveRecord::Base

  has_attached_file :photo,
                    :url => "/assets/locks/photo/:id/:style/:basename.:extension"
  has_attached_file :image,
                    :url => "/assets/locks/images/:id/:style/:basename.:extension"

  def self.search(query)
    where("name like ?", "%#{query}%")
  end

end
