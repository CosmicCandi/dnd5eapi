# Create the Armor Categories
armor_categories = ArmorCategory.all
if armor_categories.length < 4
  ArmorCategory.create(
    [
      { name: 'Light' },
      { name: 'Medium' },
      { name: 'Heavy' },
      { name: 'Shields' }
    ]
  )
end

@light = ArmorCategory.find_by(name: 'Light')
@medium = ArmorCategory.find_by(name: 'Medium')
@heavy = ArmorCategory.find_by(name: 'Heavy')
@shields = ArmorCategory.find_by(name: 'Shields')

# Populate the Armors table
armors = Armor.all
if armors.length < 13
  Armor.create(
    [
      # Light Armors
      { name: 'Padded', cost: '5 gp', armor_class: '11 + Dex Modifier',
          strength_requirement: '', stealth: true, weight: '8 lb.',
          don_time: '1 minute', doff_time: '1 minute',
          armor_category_id: @light.id },
      { name: 'Leather', cost: '10 gp', armor_class: '11 + Dex Modifier',
          strength_requirement: '', stealth: false, weight: '10 lb.',
          don_time: '1 minute', doff_time: '1 minute',
          armor_category_id: @light.id },
      { name: 'Studded Leather', cost: '45 gp', armor_class: '12 + Dex Modifier',
          strength_requirement: '', stealth: false, weight: '13 lb.',
          don_time: '1 minute', doff_time: '1 minute',
          armor_category_id: @light.id },

      # Medium Armors
      { name: 'Hide', cost:'10 gp', armor_class:'12 + Dex Modifier (max 2)',
          strength_requirement: '' , stealth: false , weight: '12 lb.',
          don_time: '5 minutes', doff_time: '1 minute',
          armor_category_id: @medium.id },
      { name: 'Chain Shirt', cost: '50 gp',
          armor_class: '13 + Dex Modifier(max 2)', strength_requirement: '',
          stealth: false, weight:'20 lb.', don_time: '5 minutes',
          doff_time: '1 minute', armor_category_id: @medium.id },
      { name: 'Scale mail', cost: '50 gp', armor_class:'14 + Dex modifier (max 2)',
          strength_requirement:'', stealth: true, weight: '45 lb.',
          don_time: '5 minutes', doff_time: '1 minute',
          armor_category_id: @medium.id },
      { name: 'Breastplate', cost:'400 gp', armor_class:'14 + Dex modifier (max 2)',
          strength_requirement: '', stealth: false, weight: '20 lb.',
          don_time: '5 minutes', doff_time: '1 minute',
          armor_category_id: @medium.id },
      { name: 'Half plate', cost:'750 gp', armor_class: '15 + Dex Modifier (max 2)',
          strength_requirement: '' , stealth: true , weight: '40 lb.',
          don_time: '5 minutes', doff_time: '1 minute',
          armor_category_id: @medium.id },

      # Heavy Armors
      { name: 'Ring mail', cost: '30 gp', armor_class: '14',
          strength_requirement: '', stealth: true , weight: '40 lb.',
          don_time: '10 minutes', doff_time: '5 minutes',
          armor_category_id: @heavy.id },
      { name: 'Chain mail', cost: '75 gp', armor_class: '16',
          strength_requirement: '13', stealth: true, weight: '55 lb.',
          don_time: '10 minutes', doff_time: '5 minutes',
          armor_category_id: @heavy.id },
      { name: 'Splint', cost: '200 gp', armor_class: '17',
          strength_requirement: '15', stealth: true, weight: '60 lb.',
          don_time: '10 minutes', doff_time: '5 minutes',
          armor_category_id: @heavy.id },
      { name: 'Plate', cost: '1,500 gp', armor_class: '18',
          strength_requirement: '15', stealth: true, weight: '65 lb.',
          don_time: '10 minutes', doff_time: '5 minutes',
          armor_category_id: @heavy.id},

      # The shield stands alone
      { name: 'Shield', cost: '10 gp', armor_class: '+2', strength_requirement:'',
          stealth: false, weight: '6 lb.', don_time: '1 action',
          doff_time: '1 action', armor_category_id: @shields.id }
    ]
  )
end
