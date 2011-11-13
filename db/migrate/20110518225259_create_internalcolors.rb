class CreateInternalcolors < ActiveRecord::Migration
  def self.up
    create_table :internalcolors do |t|
      t.string :name
      t.string :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :internalcolors
  end
end
