class CreateDopoptions < ActiveRecord::Migration
  def self.up
    create_table :dopoptions do |t|
      t.string :name
      t.string :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :dopoptions
  end
end
