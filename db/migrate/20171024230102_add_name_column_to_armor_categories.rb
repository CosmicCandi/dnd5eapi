class AddNameColumnToArmorCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :armor_categories, :name, :string
  end
end
