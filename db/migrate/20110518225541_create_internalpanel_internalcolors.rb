class CreateInternalpanelInternalcolors < ActiveRecord::Migration
  def self.up
    create_table :internalpanel_internalcolors do |t|
      t.integer :internalpanel_id
      t.integer :internalcolor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :internalpanel_internalcolors
  end
end
