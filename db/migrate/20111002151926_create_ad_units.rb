class CreateAdUnits < ActiveRecord::Migration
  def self.up
    create_table :ad_units do |t|
      t.string :name
      t.text :description
      t.string :targetWindow
      t.boolean :explicitlyTargeted
      
      t.timestamps
    end
  end

  def self.down
    drop_table :ad_units
  end
end
