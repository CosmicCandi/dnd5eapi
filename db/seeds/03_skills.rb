# Populate the Skills table
@skills = Skill.all
if @skills.length < 19
  Skill.create(
    [
      { name: 'Animal Handling', ability_id: @wis.id },
      { name: 'Acrobatics', ability_id: @dex.id },
      { name: 'Arcana', ability_id: @int.id },
      { name: 'Athletics', ability_id: @str.id },
      { name: 'Deception', ability_id: @cha.id },
      { name: 'Insight', ability_id: @wis.id },
      { name: 'History', ability_id: @int.id },
      { name: 'Intimidation', ability_id: @cha.id },
      { name: 'Investigation', ability_id: @int.id },
      { name: 'Medicine', ability_id: @wis.id },
      { name: 'Nature', ability_id: @int.id },
      { name: 'Perception', ability_id: @wis.id },
      { name: 'Performance', ability_id: @cha.id },
      { name: 'Persuasion', ability_id: @cha.id },
      { name: 'Religion', ability_id: @int.id },
      { name: 'Sleight of Hand', ability_id: @dex.id },
      { name: 'Stealth', ability_id: @dex.id },
      { name: 'Survival', ability_id: @wis.id },
      { name: 'No associated skills', ability_id: @con.id }
    ]
  )
end

# Set variables for Skills for use in the Skill Proficiencies Method
@animal_handling = Skill.find_by(name: 'Animal Handling')
@acrobatics = Skill.find_by(name: 'Acrobatics')
@arcana = Skill.find_by(name: 'Arcana')
@athletics = Skill.find_by(name: 'Athletics')
@deception = Skill.find_by(name: 'Deception')
@insight = Skill.find_by(name: 'Insight')
@history = Skill.find_by(name: 'History')
@intimidation =  Skill.find_by(name: 'Intimidation')
@investigation = Skill.find_by(name: 'Investigation')
@medicine = Skill.find_by(name: 'Medicine')
@nature = Skill.find_by(name: 'Nature')
@perception = Skill.find_by(name: 'Perception')
@performance = Skill.find_by(name: 'Performance')
@persuasion = Skill.find_by(name: 'Persuasion')
@religion = Skill.find_by(name: 'Religion')
@sleight_of_hand = Skill.find_by(name: 'Sleight of Hand')
@stealth = Skill.find_by(name: 'Stealth')
@survival = Skill.find_by(name: 'Survival')
@none = Skill.find_by(name: 'No associated skills')