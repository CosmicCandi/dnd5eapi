# Associate Armor Categories to Character Classes
def set_armor_proficiencies(character_class, armors)
  armors.each do |armor|
    ArmorProficiency.create(
      [
        { character_class_id: character_class.id,
          armor_category_id: armor.id }
      ]
    )
  end
end

armor_proficiencies = ArmorProficiency.all
if armor_proficiencies.length < 23
  set_armor_proficiencies(@barbarian, [@light, @medium, @shields])
  set_armor_proficiencies(@bard, [@light])
  set_armor_proficiencies(@cleric, [@light, @medium, @shields])
  set_armor_proficiencies(@druid, [@light, @medium, @shields])
  set_armor_proficiencies(@fighter, [@light, @medium, @heavy, @shields])
  set_armor_proficiencies(@monk, [])
  set_armor_proficiencies(@paladin, [@light, @medium, @heavy, @shields])
  set_armor_proficiencies(@ranger, [@light, @medium, @shields])
  set_armor_proficiencies(@rogue, [@light])
  set_armor_proficiencies(@sorcerer, [])
  set_armor_proficiencies(@warlock, [@light])
  set_armor_proficiencies(@wizard, [])
end