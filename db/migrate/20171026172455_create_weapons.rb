class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :cost
      t.string :damage_dice, limit: 3
      t.integer :damage_type_id
      t.string :weight
      t.integer :property_id

      t.timestamps
    end
  end
end
