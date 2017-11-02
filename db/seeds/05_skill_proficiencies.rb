def set_skill_proficiencies(character_class, skills)
  skills.each do |skill|
    SkillProficiency.create(
      [
        { character_class_id: character_class.id,
          skill_id: skill.id }
      ]
    )
  end
end

# Populate the Skill Proficiencies Table
skill_proficiencies = SkillProficiency.all
if skill_proficiencies.length < 95
  set_skill_proficiencies(@barbarian, [@animal_handling, @athletics,
    @intimidation, @nature, @perception, @survival])

  # Bards can choose their proficiency from all available skills
  set_skill_proficiencies(@bard, [@animal_handling, @acrobatics, @arcana,
    @athletics, @deception, @insight, @history, @intimidation, @investigation,
    @medicine, @nature, @perception, @performance, @persuasion, @religion,
    @sleight_of_hand, @stealth, @survival])

  set_skill_proficiencies(@cleric, [@history, @insight, @medicine, @persuasion,
    @religion])

  set_skill_proficiencies(@druid, [@arcana, @animal_handling, @insight,
    @medicine, @nature, @perception, @religion, @survival])

  set_skill_proficiencies(@fighter, [@acrobatics, @animal_handling, @athletics,
    @history, @insight, @intimidation, @perception, @survival])

  set_skill_proficiencies(@monk, [@acrobatics, @athletics, @history, @insight,
    @religion, @stealth])

  set_skill_proficiencies(@paladin, [@athletics, @insight, @intimidation,
    @medicine, @persuasion, @religion])

  set_skill_proficiencies(@ranger, [@animal_handling, @athletics, @insight,
    @investigation, @nature, @perception, @stealth, @survival])

  set_skill_proficiencies(@rogue, [@acrobatics, @athletics, @deception,
    @insight, @intimidation, @investigation, @perception, @performance,
    @persuasion, @sleight_of_hand, @stealth])

  set_skill_proficiencies(@sorcerer, [@arcana, @deception, @insight,
    @intimidation, @persuasion, @religion])

  set_skill_proficiencies(@warlock, [@arcana, @deception, @history,
    @intimidation, @investigation, @nature, @religion])

  set_skill_proficiencies(@wizard, [@arcana, @history, @insight, @investigation,
    @medicine, @religion])
end
