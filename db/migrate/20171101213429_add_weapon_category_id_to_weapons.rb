class AddWeaponCategoryIdToWeapons < ActiveRecord::Migration[5.1]
  def change
    add_reference :weapons, :weapon_category, foreign_key: true
  end
end
