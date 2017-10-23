class CreateSkillProficiencies < ActiveRecord::Migration[5.1]
  def change
    create_table :skill_proficiencies do |t|
      t.references :character_class, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
