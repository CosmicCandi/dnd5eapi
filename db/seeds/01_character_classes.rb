# Create Character Classes
classes = CharacterClass.all
if classes.length < 12
  CharacterClass.create(
    [
      { name: 'Barbarian', hit_die: 'd12',
        hit_points_at_first: '12 + Constitution Modifier',
        hit_points_at_higher: '1d12 (or 7) + your Constitution modifier',
        skill_amount: 2 },
      { name: 'Bard', hit_die: 'd8',
        hit_points_at_first: '8 + Constitution Modifier',
        hit_points_at_higher: '1d8 (or 5) + your Constitution modifier',
        skill_amount: 3 },
      { name: 'Cleric', hit_die: 'd8',
        hit_points_at_first: '8 + Constitution Modifier',
        hit_points_at_higher: '1d8 (or 5) + your Constitution modifier',
        skill_amount: 2 },
      { name: 'Druid', hit_die: 'd8',
        hit_points_at_first: '8 + Constitution Modifier',
        hit_points_at_higher: '1d8 (or 5) + your Constitution modifier',
        skill_amount: 2 },
      { name: 'Fighter', hit_die: 'd10',
        hit_points_at_first: '10 + Constitution Modifier',
        hit_points_at_higher: '1d10 (or 6) + your Constitution modifier',
        skill_amount: 2 },
      { name: 'Monk', hit_die: 'd8',
        hit_points_at_first: '8 + Constitution Modifier',
        hit_points_at_higher: '1d8 (or 5) + your Constitution modifier',
        skill_amount: 2 },
      { name: 'Paladin', hit_die: 'd10',
        hit_points_at_first: '10 + Constitution Modifier',
        hit_points_at_higher: '1d10 (or 6) + your Constitution modifier',
        skill_amount: 2 },
      { name: 'Ranger', hit_die: 'd10',
        hit_points_at_first: '10 + Constitution Modifier',
        hit_points_at_higher: '1d10 (or 6) + your Constitution modifier',
        skill_amount: 3 },
      { name: 'Rogue', hit_die: 'd8',
        hit_points_at_first: '8 + Constitution Modifier',
        hit_points_at_higher:'1d8 (or 5) + your Constitution modifier',
        skill_amount: 4 },
      { name: 'Sorcerer', hit_die: 'd6',
        hit_points_at_first: '6 + Constitution Modifier',
        hit_points_at_higher: '1d6 (or 4) + your Constitution modifier',
        skill_amount: 2 },
      { name: 'Warlock', hit_die: 'd8',
        hit_points_at_first: '8 + Constitution Modifier',
        hit_points_at_higher: '1d8 (or 5) + your Constitution modifier',
        skill_amount: 2 },
      { name: 'Wizard', hit_die: 'd6',
        hit_points_at_first: '6 + Constitution Modifier',
        hit_points_at_higher: '1d6 (or 4) + your Constitution modifier',
        skill_amount: 2 }
    ]
  )
end

# Set an array to hold the classes, for iteration during Class Save Proficiency
# creation
@classes = [
  @barbarian = CharacterClass.find_by(name: 'Barbarian'),
  @bard = CharacterClass.find_by(name: 'Bard'),
  @cleric = CharacterClass.find_by(name: 'Cleric'),
  @druid = CharacterClass.find_by(name: 'Druid'),
  @fighter = CharacterClass.find_by(name: 'Fighter'),
  @monk = CharacterClass.find_by(name: 'Monk'),
  @paladin = CharacterClass.find_by(name: 'Paladin'),
  @ranger = CharacterClass.find_by(name: 'Ranger'),
  @rogue = CharacterClass.find_by(name: 'Rogue'),
  @sorcerer = CharacterClass.find_by(name: 'Sorcerer'),
  @warlock = CharacterClass.find_by(name: 'Warlock'),
  @wizard = CharacterClass.find_by(name: 'Wizard')
]