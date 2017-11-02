class CreateArmors < ActiveRecord::Migration[5.1]
  def change
    create_table :armors do |t|
      t.string :name
      t.string :cost
      t.string :armor_class
      t.integer :strength_requirement
      t.boolean :stealth
      t.string :weight
      t.string :don_time
      t.string :doff_time

      t.timestamps
    end
  end
end
