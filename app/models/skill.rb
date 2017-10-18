class Skill < ApplicationRecord
  require 'pry'

  belongs_to :ability
end
