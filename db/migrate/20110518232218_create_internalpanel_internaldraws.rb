class CreateInternalpanelInternaldraws < ActiveRecord::Migration
  def self.up
    create_table :internalpanel_internaldraws do |t|
      t.integer :internalpanel_id
      t.integer :internaldraw_id

      t.timestamps
    end
  end

  def self.down
    drop_table :internalpanel_internaldraws
  end
end
