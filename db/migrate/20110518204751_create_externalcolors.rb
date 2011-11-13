class CreateExternalcolors < ActiveRecord::Migration
  def self.up
    create_table :externalcolors do |t|
      t.string :name
      t.string :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :externalcolors
  end
end
