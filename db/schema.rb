# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_05_13_032301) do

  create_table "colors", force: :cascade do |t|
    t.string "color_name"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.integer "product_id"
    t.string "question_description"
    t.string "answer_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "message_threads", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.integer "messages_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "role"
    t.string "content"
    t.integer "user_id"
    t.integer "thread_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "offsprings", force: :cascade do |t|
    t.integer "parent_id"
    t.string "name"
    t.date "dob"
    t.integer "height_cm"
    t.integer "weight_lbs"
    t.integer "weight_oz"
    t.string "gender"
    t.integer "hair_color_id"
    t.integer "eye_color_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "upc_id"
    t.string "item_description"
    t.string "image_url"
    t.string "item_name"
    t.float "price"
    t.string "brand"
    t.string "color"
    t.string "size"
    t.string "dimensions"
    t.integer "reviews_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.integer "reviews_count"
    t.integer "offsprings_count"
    t.integer "message_threads_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
