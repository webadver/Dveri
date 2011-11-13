class AddAttachmentImageToInternalpanel < ActiveRecord::Migration
  def self.up
    add_column :internalpanels, :image_file_name, :string
    add_column :internalpanels, :image_content_type, :string
    add_column :internalpanels, :image_file_size, :integer
    add_column :internalpanels, :image_updated_at, :datetime
  end

  def self.down
    remove_column :internalpanels, :image_file_name
    remove_column :internalpanels, :image_content_type
    remove_column :internalpanels, :image_file_size
    remove_column :internalpanels, :image_updated_at
  end
end
