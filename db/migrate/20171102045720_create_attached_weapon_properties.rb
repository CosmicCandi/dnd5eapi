class CreateAttachedWeaponProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :attached_weapon_properties do |t|
      t.references :weapon, foreign_key: true
      t.references :weapon_property, foreign_key: true

      t.timestamps
    end
  end
end
