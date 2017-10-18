class CharacterClass < ApplicationRecord
  require 'pry'

  has_many :abilities
  has_many :save_proficiencies

  validates :name, :hit_die, presence: true
  validates :hit_die, length: {maximum: 3}

end

