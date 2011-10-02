class CreateAdUnitSizes < ActiveRecord::Migration
  def self.up
    create_table :ad_unit_sizes do |t|
      t.integer :width
      t.integer :height
      t.boolean :isAspectRatio
      t.string :environmentType

      t.timestamps
    end
  end

  def self.down
    drop_table :ad_unit_sizes
  end
end
