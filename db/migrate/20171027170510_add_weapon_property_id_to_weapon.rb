class AddWeaponPropertyIdToWeapon < ActiveRecord::Migration[5.1]
  def change
    add_reference :weapons, :weapon_property, foreign_key: true
  end
end
