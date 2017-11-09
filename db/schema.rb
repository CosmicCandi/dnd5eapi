# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171102045720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "armor_categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "armor_proficiencies", force: :cascade do |t|
    t.bigint "armor_category_id"
    t.bigint "character_class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["armor_category_id"], name: "index_armor_proficiencies_on_armor_category_id"
    t.index ["character_class_id"], name: "index_armor_proficiencies_on_character_class_id"
  end

  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.string "cost"
    t.string "armor_class"
    t.integer "strength_requirement"
    t.boolean "stealth"
    t.string "weight"
    t.string "don_time"
    t.string "doff_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "armor_category_id"
    t.index ["armor_category_id"], name: "index_armors_on_armor_category_id"
  end

  create_table "attached_weapon_properties", force: :cascade do |t|
    t.bigint "weapon_id"
    t.bigint "weapon_property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["weapon_id"], name: "index_attached_weapon_properties_on_weapon_id"
    t.index ["weapon_property_id"], name: "index_attached_weapon_properties_on_weapon_property_id"
  end

  create_table "character_classes", force: :cascade do |t|
    t.string "name"
    t.string "hit_die", limit: 4
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hit_points_at_first"
    t.string "hit_points_at_higher"
    t.integer "skill_amount"
  end

  create_table "damage_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "save_proficiencies", force: :cascade do |t|
    t.bigint "character_class_id"
    t.bigint "ability_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ability_id"], name: "index_save_proficiencies_on_ability_id"
    t.index ["character_class_id"], name: "index_save_proficiencies_on_character_class_id"
  end

  create_table "skill_proficiencies", force: :cascade do |t|
    t.bigint "character_class_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_class_id"], name: "index_skill_proficiencies_on_character_class_id"
    t.index ["skill_id"], name: "index_skill_proficiencies_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ability_id"
    t.index ["ability_id"], name: "index_skills_on_ability_id"
  end

  create_table "weapon_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapon_properties", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "cost"
    t.string "damage_dice", limit: 4
    t.integer "damage_type_id"
    t.bigint "weapon_category_id"
    t.string "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["damage_type_id"], name: "index_weapons_on_damage_type_id"
    t.index ["weapon_category_id"], name: "index_weapons_on_weapon_category_id"
  end

  add_foreign_key "armor_proficiencies", "armor_categories"
  add_foreign_key "armor_proficiencies", "character_classes"
  add_foreign_key "armors", "armor_categories"
  add_foreign_key "attached_weapon_properties", "weapon_properties"
  add_foreign_key "attached_weapon_properties", "weapons"
  add_foreign_key "save_proficiencies", "abilities"
  add_foreign_key "save_proficiencies", "character_classes"
  add_foreign_key "skill_proficiencies", "character_classes"
  add_foreign_key "skill_proficiencies", "skills"
  add_foreign_key "skills", "abilities"
  add_foreign_key "weapons", "damage_types"
  add_foreign_key "weapons", "weapon_categories"
  end
