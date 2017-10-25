class AddArmorCategoryIdToArmor < ActiveRecord::Migration[5.1]
  def change
    add_reference :armors, :armor_category, foreign_key: true
  end
end
