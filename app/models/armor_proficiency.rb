class ArmorProficiency < ApplicationRecord
  belongs_to :armor_category
  belongs_to :character_class
end
