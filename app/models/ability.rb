class Ability < ApplicationRecord
  require 'pry'

  belongs_to :character_class
  has_many :skills

end
