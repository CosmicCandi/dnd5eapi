class RemoveArmorIdColumnFromArmorCategory < ActiveRecord::Migration[5.1]
  def change
    remove_column :armor_categories, :armor_id
  end
end
