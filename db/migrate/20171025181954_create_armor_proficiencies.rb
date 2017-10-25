class CreateArmorProficiencies < ActiveRecord::Migration[5.1]
  def change
    create_table :armor_proficiencies do |t|
      t.references :armor_category, foreign_key: true
      t.references :character_class, foreign_key: true

      t.timestamps
    end
  end
end
