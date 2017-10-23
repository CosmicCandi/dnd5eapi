class AddFieldsToCharacterClass < ActiveRecord::Migration[5.1]
  def change
    add_column :character_classes, :hit_points_at_first, :string
    add_column :character_classes, :hit_points_at_higher, :string
    add_column :character_classes, :skill_amount, :integer
    add_reference :character_classes, :skill, foreign_key: true

  end
end
