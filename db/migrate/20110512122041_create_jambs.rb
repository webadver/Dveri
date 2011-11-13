class CreateJambs < ActiveRecord::Migration
  def self.up
    create_table :jambs do |t|
      t.string :name
      t.string :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :jambs
  end
end
