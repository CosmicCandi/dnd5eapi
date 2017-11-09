@weapon_properties = WeaponProperty.all
if @weapon_properties.length < 11
  WeaponProperty.create(
    [
      { name: 'Ammunition', description: 'You can use a weapon that has
          the ammunition property to make a ranged attack only if you have
          ammunition to fire from the weapon. Each time you attack with
          the weapon, you expend one piece of ammunition. Drawing the
          ammunition from a quiver, case, or other container is part of
          the attack (you need a free hand to load a one-handed weapon).\n
          At the end of the battle, you can recover half your expended
          ammunition by taking a minute to search the battlefield.\n
          If you use a weapon that has the ammunition property to make a
          melee attack, you treat the weapon as an improvised weapon
          (see "Improvised Weapons" later in the section). A sling must be
          loaded to deal any damage when used in this way.' },
      { name: 'Finesse', description: 'When making an attack with a
          finesse weapon, you use your choice of your Strength or
          Dexterity modifier for the attack and damage rolls. You must use
          the same modifier for both rolls.' },
      { name: 'Heavy', description: 'Small creatures have disadvantage on
          attack rolls with heavy weapons. A heavy weapon\'s size and bulk
          make it too large for a Small creature to use effectively.' },
      { name: 'Light', description: 'A light weapon is small and easy to
          handle, making it ideal for use when fighting with two
          weapons.' },
      { name: 'Loading', description: 'Because of the time required to
          load this weapon, you can fire only one piece of ammunition from
          it when you use an action, bonus action, or reaction to fire it,
          regardless of the number of attacks you can normally make.' },
      { name: 'Range', description: 'A weapon that can be used to make a
          ranged attack has a range in parentheses after the ammunition or
          thrown property. The range lists two numbers. The first is the
          weapon\'s normal range in feet, and the second indicates the
          weapon\'s long range. When attacking a target beyond normal
          range, you have disadvantage on the attack roll. You can\'t
          attack a target beyond the weapon\'s long range.' },
      { name: 'Reach', description: 'This weapon adds 5 feet to your reach
          when you attack with it, as well as when determining your reach
          for opportunity attacks with it.' },
      { name: 'Special', description: 'A weapon with the special property
          has unusual rules governing its use, explained in the weapon\'s
          description (see "Special Weapons" later in this section).' },
      { name: 'Thrown', description: 'If a weapon has the thrown property,
          you can throw the weapon to make a ranged attack. If the weapon
          is a melee weapon, you use the same ability modifier for that
          attack roll and damage roll that you would use for a melee
          attack with the weapon. For example, if you throw a handaxe,
          you use your Strength, but if you throw a dagger, you can use
          either your Strength or your Dexterity, since the dagger has
          the finesse property.' },
      { name: 'Two-Handed', description: 'This weapon requires two hands
          when you attack with it.' },
      { name: 'Versatile', description: 'This weapon can be used with one
          or two hands. A damage value in parentheses appears with the
          property--the damage when the weapon is used with two hands to
          make a melee attack.' }
    ]
  )
end

@ammunition = WeaponProperty.find_by(name: "Ammunition")
@finesse = WeaponProperty.find_by(name: "Finesse")
@heavy = WeaponProperty.find_by(name: "Heavy")
@light = WeaponProperty.find_by(name: "Light")
@loading = WeaponProperty.find_by(name: "Loading")
@range = WeaponProperty.find_by(name: "Range")
@reach = WeaponProperty.find_by(name: "Reach")
@special = WeaponProperty.find_by(name: "Special")
@thrown  = WeaponProperty.find_by(name: "Thrown")
@two_handed = WeaponProperty.find_by(name: "Two-Handed")
@versatile = WeaponProperty.find_by(name: "Versatile")

def set_weapon_properties(weapon, properties)
  properties.each do |property|
    AttachedWeaponProperty.create(
      [
        { weapon_id: Weapon.find_by(name: weapon).id,
          weapon_property_id: property.id }
      ]
    )
  end
end

# Simple Melee Properties
set_weapon_properties('Club', [@light])
set_weapon_properties('Dagger', [@finesse, @light, @thrown])
set_weapon_properties('Greatclub', [@two_handed])
set_weapon_properties('Handaxe', [@light, @thrown])
set_weapon_properties('Javelin', [@thrown])
set_weapon_properties('Light Hammer', [@light, @thrown])
# Mace has no properties
set_weapon_properties('Quarterstaff', [@versatile])
set_weapon_properties('Sickle', [@light])
set_weapon_properties('Spear', [@thrown, @versatile])

# Simple Ranged Properties
set_weapon_properties('Crossbow, light', [@ammunition, @loading, @two_handed])
set_weapon_properties('Dart', [@finesse, @thrown] )
set_weapon_properties('Shortbow', [@ammunition, two_handed])
set_weapon_properties('Sling', [@ammunition])

# Martial Melee Properties
set_weapon_properties('Battleaxe', [@versatile])
# Flail has no properties
set_weapon_properties('Glaive', [@heavy, @reach, two_handed])
set_weapon_properties('Greataxe', [@heavy, @two_handed])
set_weapon_properties('Greatsword', [@heavy, @two_handed])
set_weapon_properties('Halberd', [@heavy, @reach, @two_handed])
set_weapon_properties('Lance', [@reach, @special])
set_weapon_properties('Longsword', [@versatile])
set_weapon_properties('Maul', [@heavy, @two_handed])
# Morningstar has no properties
set_weapon_properties('Pike', [@heavy, @reach, @two_handed])
set_weapon_properties('Rapier', [@finesse])
set_weapon_properties('Scimitar', [@finesse, @light])
set_weapon_properties('Shortsword', [@finesse, @light])
set_weapon_properties('Trident', [@thrown, @versatile])
# War pick has no properties
set_weapon_properties('Warhammer', [@versatile])
set_weapon_properties('Whip', [@finesse, @reach])

# Martial Ranged
set_weapon_properties('Blowgun', [@ammunition, @loading])
set_weapon_properties('Crossbow, hand', [@ammunition, @light, @loading])
set_weapon_properties('Crossbow, heavy', [@ammunition, @heavy, @loading,
                                          @two_handed])
set_weapon_properties('Longbow', [@ammunition, @heavy, @two_handed])
set_weapon_properties('Net', [@special, @thrown])

