# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


classes = CharacterClass.all
if classes.length.zero?
  CharacterClass.create(
    [
      { name: 'Barbarian', hit_die: 'd12' },
      { name: 'Bard', hit_die: 'd8' },
      { name: 'Cleric', hit_die: 'd8' },
      { name: 'Druid', hit_die: 'd8' },
      { name: 'Fighter', hit_die: 'd10' },
      { name: 'Monk', hit_die: 'd8' },
      { name: 'Paladin', hit_die: 'd10' },
      { name: 'Ranger', hit_die: 'd8' },
      { name: 'Rogue', hit_die: 'd8' },
      { name: 'Sorcerer', hit_die: 'd8' },
      { name: 'Warlock', hit_die: 'd8' },
      { name: 'Wizard', hit_die: 'd6' }
    ]
  )
end

abilities = Ability.all
if abilities.length.zero?
  Ability.create(
    [
      { name: 'Strength', description: "Strength measures bodily power, athletic training, and the extent to which you can exert raw physical force.\n A Strength check can model any attempt to lift, push, pull, or break something, to force your body through a space, or to otherwise apply brute force to a situation. The Athletics skill reflects aptitude in certain kinds of Strength checks." },
      { name: 'Dexterity', description: "Dexterity measures agility, reflexes, and balance.\n A Dexterity check can model any attempt to move nimbly, quickly, or quietly, or to keep from falling on tricky footing. The Acrobatics, Sleight of Hand, and Stealth skills reflect aptitude in certain kinds of Dexterity checks." },
      { name: 'Constitution', description: "Constitution measures health, stamina, and vital force.\n Constitution checks are uncommon, and no skills apply to Constitution checks, because the endurance this ability represents is largely passive rather than involving a specific effort on the part of a character or monster." },
      { name: 'Intelligence', description: "Intelligence measures mental acuity, accuracy of recall, and the ability to reason.\n An Intelligence check comes into play when you need to draw on logic, education, memory, or deductive reasoning. The Arcana, History, Investigation, Nature, and Religion skills reflect aptitude in certain kinds of Intelligence checks." },
      { name: 'Wisdom', description: "Wisdom reflects how attuned you are to the world around you and represents perceptiveness and intuition.\n A Wisdom check might reflect an effort to read body language, understand someone’s feelings, notice things about the environment, or care for an injured person. The Animal Handling, Insight, Medicine, Perception, and Survival skills reflect aptitude in certain kinds of Wisdom checks." },
      { name: 'Charisma', description: "Charisma measures your ability to interact effectively with others. It includes such factors as confidence and eloquence, and it can represent a charming or commanding personality.\n A Charisma check might arise when you try to influence or entertain others, when you try to make an impression or tell a convincing lie, or when you are navigating a tricky social situation. The Deception, Intimidation, Performance, and Persuasion skills reflect aptitude in certain kinds of Charisma checks." }
    ]
  )
end

skills = Skill.all
@str = Ability.find_by(name: 'Strength')
@dex = Ability.find_by(name: 'Dexterity')
@con = Ability.find_by(name: 'Constitution')
@int = Ability.find_by(name: 'Intelligence')
@wis = Ability.find_by(name: 'Wisdom')
@cha = Ability.find_by(name: 'Charisma')
if skills.length.zero?
  Skill.create (
    [
      { name: 'Animal Handling', ability_id: @wis.id },
      { name: 'Acrobatics', ability_id: @dex.id },
      { name: 'Arcana', ability_id: @int.id },
      { name: 'Athletics', ability_id: @str.id },
      { name: 'Deception', ability_id: @cha.id },
      { name: 'History', ability_id: @int.id },
      { name: 'Insight', ability_id: @wis.id },
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
