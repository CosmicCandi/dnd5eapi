class CreateSaveProficiencies < ActiveRecord::Migration[5.1]
  def change
    create_table :save_proficiencies do |t|
      t.references :character_class, foreign_key: true
      t.references :ability, foreign_key: true

      t.timestamps
    end
  end
end
