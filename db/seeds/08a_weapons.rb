weapon_categories = WeaponCategory.all
if weapon_categories.length < 4
  WeaponCategory.create(
    [
      { name: 'Simple Melee' },
      { name: 'Simple Ranged' },
      { name: 'Martial Melee' },
      { name: 'Martial Ranged' }
    ]
  )
end

@simple_melee = WeaponCategory.find_by(name: "Simple Melee")
@simple_ranged = WeaponCategory.find_by(name: "Simple Ranged")
@martial_melee = WeaponCategory.find_by(name: "Martial Melee")
@martial_ranged = WeaponCategory.find_by(name: "Martial Ranged")

@weapons = Weapon.all
if @weapons.length < 37
  Weapon.create!(
    [
      # Simple Melee Weapons
      { name:'Club', cost: '1 sp', damage_dice: '1d4',
        damage_type_id: @bludgeoning.id, weight: '2 lb.',
        weapon_category_id: @simple_melee.id },
      { name: 'Dagger', cost: '2 gp', damage_dice: '1d4',
        damage_type_id: @piercing.id, weight: '1 lb.',
        weapon_category_id: @simple_melee.id },
      { name:'Greatclub', cost: '2 sp', damage_dice: '1d8',
        damage_type_id: @bludgeoning.id, weight: '10 lb.' ,
        weapon_category_id: @simple_melee.id },
      { name: 'Handaxe', cost: '5 gp', damage_dice: '1d6',
        damage_type_id: @slashing.id, weight: '2 lb.',
        weapon_category_id: @simple_melee.id },
      { name: 'Javelin', cost: '5 sp', damage_dice: '1d6',
        damage_type_id: @piercing.id, weight: '2 lb.',
        weapon_category_id: @simple_melee.id },
      { name: 'Light hammer', cost: '2 gp', damage_dice: '1d4',
        damage_type_id: @bludgeoning.id, weight: '2 lb.',
        weapon_category_id: @simple_melee.id },
      { name: 'Mace', cost: '5 gp', damage_dice: '1d6',
        damage_type_id: @bludgeoning.id, weight: '4 lb.',
        weapon_category_id: @simple_melee.id },
      { name: 'Quarterstaff', cost: '2 sp', damage_dice: '1d6',
        damage_type_id: @bludgeoning.id, weight: '4 lb.',
        weapon_category_id: @simple_melee.id },
      { name: 'Sickle', cost: '1 gp', damage_dice: '1d4',
        damage_type_id: @slashing.id, weight: '2 lb.',
        weapon_category_id: @simple_melee.id },
      { name: 'Spear', cost: '1 gp', damage_dice: '1d6',
        damage_type_id: @piercing.id, weight: '3 lb.',
        weapon_category_id: @simple_melee.id },

      # Simple Ranged Weapons
      { name: 'Crossbow, light', cost: '25 gp', damage_dice: '1d8',
        damage_type_id: @piercing.id, weight: '5 lb.',
        weapon_category_id: @simple_ranged.id },
      { name: 'Dart', cost: '5 cp', damage_dice: '1d4',
        damage_type_id: @piercing.id, weight: '1/4 lb.',
        weapon_category_id: @simple_ranged.id },
      { name: 'Shortbow', cost: '25 gp', damage_dice: '1d6',
        damage_type_id: @piercing.id, weight: '2 lb.',
        weapon_category_id: @simple_ranged.id },
      { name: 'Sling', cost: '1 sp', damage_dice: '1d4',
        damage_type_id: @bludgeoning.id, weight: '',
        weapon_category_id: @simple_ranged.id },

      # Martial Melee Weapons
      { name: 'Battleaxe', cost: '10 gp', damage_dice: '1d8',
        damage_type_id: @slashing.id, weight: '4 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Flail', cost: '10 gp', damage_dice: '1d8',
        damage_type_id: @bludgeoning.id, weight: '2 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Glaive', cost: '20 gp', damage_dice: '1d10',
        damage_type_id: @slashing.id, weight: '6 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Greataxe', cost: '30 gp', damage_dice: '1d12',
        damage_type_id: @slashing.id, weight: '6 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Greatsword', cost: '50 gp', damage_dice: '2d6',
        damage_type_id: @slashing.id, weight: '6 lb.',
        weapon_category_id: @martial_melee.id },
      { name:'Halberd', cost: '20 gp', damage_dice: '1d10',
        damage_type_id: @slashing.id, weight: '6 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Lance', cost: '10 gp', damage_dice: '1d12',
        damage_type_id: @piercing.id, weight: '6 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Longsword', cost: '15 gp', damage_dice: '1d8',
        damage_type_id: @slashing.id, weight: '3 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Maul', cost: '10 gp', damage_dice: '2d6',
        damage_type_id: @bludgeoning.id, weight: '10 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Morningstar', cost: '15 gp', damage_dice: '1d8',
        damage_type_id: @piercing.id, weight: '4 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Pike', cost: '5 gp', damage_dice: '1d10',
        damage_type_id: @piercing.id, weight: '18 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Rapier', cost: '25 gp', damage_dice: '1d8',
        damage_type_id: @piercing.id, weight: '2 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Scimitar', cost: '25 gp', damage_dice: '1d6',
        damage_type_id: @slashing.id, weight: '3 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Shortsword', cost: '10 gp', damage_dice: '1d6',
        damage_type_id: @piercing.id, weight: '2 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Trident', cost: '5 gp', damage_dice: '1d6',
        damage_type_id: @piercing.id, weight: '4 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'War pick', cost: '5 gp', damage_dice: '1d8',
        damage_type_id: @piercing.id, weight: '2 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Warhammer', cost: '15 gp', damage_dice: '1d8',
        damage_type_id: @bludgeoning.id, weight: '2 lb.',
        weapon_category_id: @martial_melee.id },
      { name: 'Whip', cost: '2 gp', damage_dice: '1d4',
        damage_type_id: @slashing.id, weight: '3 lb.',
        weapon_category_id: @martial_melee.id },

      # Martial Ranged Weapons
      { name: 'Blowgun', cost: '10 gp', damage_dice: '1',
        damage_type_id: @piercing.id, weight: '1 lb.' ,
        weapon_category_id: @martial_ranged.id },
      { name: 'Crossbow, hand', cost: '75 gp', damage_dice: '1d6',
        damage_type_id: @piercing.id, weight: '3 lb.',
        weapon_category_id: @martial_ranged.id },
      { name: 'Crossbow, heavy', cost: '50 gp', damage_dice: '1d10',
        damage_type_id: @piercing.id, weight: '18 lb.',
        weapon_category_id: @martial_ranged.id },
      { name: 'Longbow', cost: '50 gp', damage_dice: '1d8',
        damage_type_id: @piercing.id, weight: '2 lb.',
        weapon_category_id: @martial_ranged.id },
      { name: 'Net', cost: '1 gp', damage_dice: '',
        damage_type_id: @bludgeoning.id, weight: '3 lb.',
        weapon_category_id: @martial_ranged.id }
    ]
  )end