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
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },

      # Martial Melee Weapons
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },

      # Martial Ranged Weapons
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: },
      { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_category_id: }
    ]  )end