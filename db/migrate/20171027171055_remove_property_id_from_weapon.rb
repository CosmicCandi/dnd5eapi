class RemovePropertyIdFromWeapon < ActiveRecord::Migration[5.1]
  def change
    remove_column :weapons, :property_id
  end
end
