class DeleteSkillIdFromCharacterClass < ActiveRecord::Migration[5.1]
  def change
    remove_column :character_classes, :skill_id
  end
end
