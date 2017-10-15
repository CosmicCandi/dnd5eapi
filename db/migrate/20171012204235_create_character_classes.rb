class CreateCharacterClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :character_classes do |t|
      t.string :name
      t.string :hit_die, limit: 3

      t.timestamps
    end
  end
end
