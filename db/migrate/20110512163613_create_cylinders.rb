class CreateCylinders < ActiveRecord::Migration
  def self.up
    create_table :cylinders do |t|
      t.string :name
      t.string :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :cylinders
  end
end
