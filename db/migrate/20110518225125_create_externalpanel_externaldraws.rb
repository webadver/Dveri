class CreateExternalpanelExternaldraws < ActiveRecord::Migration
  def self.up
    create_table :externalpanel_externaldraws do |t|
      t.integer :externalpanel_id
      t.integer :externaldraw_id

      t.timestamps
    end
  end

  def self.down
    drop_table :externalpanel_externaldraws
  end
end
