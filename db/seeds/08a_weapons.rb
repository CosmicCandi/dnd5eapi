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
      { name:'Club', cost: '1 sp', damage_dice: '1d4',
        damage_type_id: @bludgeoning.id, weight: '2 lb.',
        weapon_category_id: @simple_melee.id },
      { name: 'Dagger', cost: '2 gp', damage_dice: '1d4',
        damage_type_id: @piercing.id, weight: '1 lb.',
        weapon_category_id: @simple_melee.id },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: },
      # { name:, cost:, damage_dice:, damage_type_id:,          weight: , weapon_property_id:, weapon_category_id: }
    ]
  )
end