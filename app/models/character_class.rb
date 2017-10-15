class CharacterClass < ApplicationRecord

validates :name, :hit_die, presence: true
validates :hit_die, length: {maximum: 3}

end
