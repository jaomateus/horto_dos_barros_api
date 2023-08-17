# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_17_001630) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plants", force: :cascade do |t|
    t.integer "id_trefle"
    t.integer "stock_quantity"
    t.boolean "discontinued"
    t.decimal "price", precision: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "featured"
    t.string "family"
    t.string "genus"
    t.string "scientific_name"
    t.string "common_name"
    t.boolean "eddible"
    t.boolean "n_fixer"
    t.string "image_url"
    t.integer "stock"
    t.integer "stars"
    t.string "sun_requirements"
    t.decimal "soil_ph", precision: 2
    t.string "drought_tolerance"
    t.decimal "plant_height", precision: 2
    t.decimal "plant_width", precision: 2
  end

end
