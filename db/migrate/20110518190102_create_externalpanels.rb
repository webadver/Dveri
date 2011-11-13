class CreateExternalpanels < ActiveRecord::Migration
  def self.up
    create_table :externalpanels do |t|
      t.string :name
      t.string :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :externalpanels
  end
end
