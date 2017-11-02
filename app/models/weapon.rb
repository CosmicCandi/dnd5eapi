class Weapon < ApplicationRecord

  belongs_to :weapon_category

  has_many :attached_weapon_properties
  has_many :weapon_properties, through: :attached_weapon_properties

  has_many :damage_types

end
