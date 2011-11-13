class CreateDoplocks < ActiveRecord::Migration
  def self.up
    create_table :doplocks do |t|
      t.string :name
      t.string :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :doplocks
  end
end
