class SkillProficiency < ApplicationRecord
  belongs_to :character_class
  belongs_to :skill

end
