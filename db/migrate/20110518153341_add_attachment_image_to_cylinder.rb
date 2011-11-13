class AddAttachmentImageToCylinder < ActiveRecord::Migration
  def self.up
    add_column :cylinders, :image_file_name, :string
    add_column :cylinders, :image_content_type, :string
    add_column :cylinders, :image_file_size, :integer
    add_column :cylinders, :image_updated_at, :datetime
  end

  def self.down
    remove_column :cylinders, :image_file_name
    remove_column :cylinders, :image_content_type
    remove_column :cylinders, :image_file_size
    remove_column :cylinders, :image_updated_at
  end
end
