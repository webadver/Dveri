class CreateLocks < ActiveRecord::Migration
  def self.up
    create_table :locks do |t|
      t.string :name
      t.string :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :locks
  end
end
