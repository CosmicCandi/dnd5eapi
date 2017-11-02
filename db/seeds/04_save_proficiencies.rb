# Creates save proficiencies related to class
def set_save_proficiencies(character_class, ability1, ability2)
  SaveProficiency.create(
    [
      { character_class_id: character_class.id, ability_id: ability1.id },
      { character_class_id: character_class.id, ability_id: ability2.id }
    ]
  )
end

# Create Save Proficiecies
proficiencies = SaveProficiency.all
if proficiencies.length < 24
  @classes.each do |character_class|
    case character_class.name
    when 'Barbarian'
      set_save_proficiencies(@barbarian, @str, @con)
    when 'Bard'
      set_save_proficiencies(@bard, @dex, @cha)
    when 'Cleric'
      set_save_proficiencies(@cleric, @wis, @cha)
    when 'Druid'
      set_save_proficiencies(@druid, @int, @wis)
    when 'Fighter'
      set_save_proficiencies(@fighter, @str, @con)
    when 'Monk'
      set_save_proficiencies(@monk, @str, @dex)
    when 'Paladin'
      set_save_proficiencies(@paladin, @wis, @cha)
    when 'Ranger'
      set_save_proficiencies(@ranger, @str, @dex)
    when 'Rogue'
      set_save_proficiencies(@rogue, @dex, @int)
    when 'Sorcerer'
      set_save_proficiencies(@sorcerer, @con, @cha)
    when 'Warlock'
      set_save_proficiencies(@warlock, @wis, @cha)
    when 'Wizard'
      set_save_proficiencies(@wizard, @int, @wis)
    end
  end
end
