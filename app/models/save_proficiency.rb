class SaveProficiency < ApplicationRecord
  belongs_to :character_class
  belongs_to :ability
end
