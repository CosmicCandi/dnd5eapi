class AttachedWeaponProperty < ApplicationRecord
  belongs_to :weapon
  belongs_to :weapon_property
end
