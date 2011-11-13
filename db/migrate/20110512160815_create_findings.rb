class CreateFindings < ActiveRecord::Migration
  def self.up
    create_table :findings do |t|
      t.string :name
      t.string :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :findings
  end
end
