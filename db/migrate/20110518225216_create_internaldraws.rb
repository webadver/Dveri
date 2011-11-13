class CreateInternaldraws < ActiveRecord::Migration
  def self.up
    create_table :internaldraws do |t|
      t.string :name
      t.string :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :internaldraws
  end
end
