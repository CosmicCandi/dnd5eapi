class CreateArmorCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :armor_categories do |t|
      t.references :armor, foreign_key: true

      t.timestamps
    end
  end
end
