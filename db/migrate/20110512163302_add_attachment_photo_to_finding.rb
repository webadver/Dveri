class AddAttachmentPhotoToFinding < ActiveRecord::Migration
  def self.up
    add_column :findings, :photo_file_name, :string
    add_column :findings, :photo_content_type, :string
    add_column :findings, :photo_file_size, :integer
    add_column :findings, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :findings, :photo_file_name
    remove_column :findings, :photo_content_type
    remove_column :findings, :photo_file_size
    remove_column :findings, :photo_updated_at
  end
end
