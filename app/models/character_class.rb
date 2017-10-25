class CharacterClass < ApplicationRecord
  require 'pry'

  has_many :armor_proficiencies
  has_many :armor_categories, through:  :armor_proficiencies

  has_many :save_proficiencies
  has_many :abilities, through: :save_proficiencies

  has_many :skill_proficiencies
  has_many :skills, through: :skill_proficiencies

  validates :name, :hit_die, presence: true
  validates :hit_die, length: { maximum: 3 }

end
