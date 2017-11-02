# An ActiveRecord class for storing weapon properties (light, finesse,etc.)
class WeaponProperty < ApplicationRecord
  has_many :weapons
end
