class CreateExternalpanelExternalcolors < ActiveRecord::Migration
  def self.up
    create_table :externalpanel_externalcolors do |t|
      t.integer :externalpanel_id
      t.integer :externalcolor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :externalpanel_externalcolors
  end
end
