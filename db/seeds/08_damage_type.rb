damage_types = DamageType.all
if damage_types.length < 12
  DamageType.create(
    [
      { name: 'Acid', description: 'The corrosive spray of a black dragon\'s
          breath and the dissolving enzymes secreted by a black pudding deal
          acid damage.'},
      { name: 'Bludgeoning', description: 'Blunt force attacks--hammers,
          falling, constriction, and the like--deal bludgeoning damage.' },
      { name: 'Cold', description: 'The infernal chill radiating from an ice
          devil\'s spear and the frigid blast of a white dragon\'s breath deal
          cold damage.'},
      { name: 'Fire', description: 'Red dragons breathe fire, and many spells
          conjure flames to deal fire damage.'},
      { name: 'Force', description: 'Force is pure magical energy focused into a
          damaging form. Most effects that deal force damage are spells,
          including magic missile and spiritual weapon.'},
      { name: 'Lightning', description: 'A lightning bolt spell and a blue
        dragon\'s breath deal lightning damage.' },
      { name: 'Necrotic', description: 'Necrotic damage, dealt by certain undead
          and a spell such as chill touch, withers matter and even the soul.' },
      { name: 'Piercing', description: 'Puncturing and impaling attacks,
          including spears and monsters\' bites, deal piercing damage.' },
      { name: 'Poison', description: 'Venomous stings and the toxic gas of a
          green dragon\'s breath deal poison damage.' },
      { name: 'Psychic', description: 'Mental abilities such as a psionic blast
          deal psychic damage.' },
      { name: 'Radiant', description: 'Radiant damage, dealt by a cleric\'s
          flame strike spell or an angel\'s smiting weapon, sears the flesh like
          fire and overloads the spirit with power.' },
      { name: 'Slashing', description: 'Swords, axes, and monsters\' claws deal
          slashing damage.' },
      { name: 'Thunder', description: 'A concussive burst of sound, such as the
          effect of the thunderwave spell, deals thunder damage.' }
    ]
  )
end

@acid = DamageType.find_by(name: 'Acid')
@bludgeoning = DamageType.find_by(name: 'Bludgeoning')
@cold = DamageType.find_by(name: 'Cold')
@fire = DamageType.find_by(name: 'Fire')
@force = DamageType.find_by(name: 'Force')
@lightning = DamageType.find_by(name: 'Lightning')
@necrotic = DamageType.find_by(name: 'Necrotic')
@piercing = DamageType.find_by(name: 'Piercing')
@poison = DamageType.find_by(name: 'Poison')
@psychic = DamageType.find_by(name: 'Psychic')
@radiant = DamageType.find_by(name: 'Radiant')
@slashing = DamageType.find_by(name: 'Slashing')
@thunder = DamageType.find_by(name: 'Thunder')
