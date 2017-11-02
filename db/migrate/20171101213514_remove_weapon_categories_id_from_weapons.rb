class RemoveWeaponCategoriesIdFromWeapons < ActiveRecord::Migration[5.1]
  def change
    remove_column :weapons, :weapon_categories_id
  end
end
