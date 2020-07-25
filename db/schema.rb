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

ActiveRecord::Schema.define(version: 2020_03_22_234142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "area_credits", force: :cascade do |t|
    t.integer "minimum_credits"
    t.bigint "career_id"
    t.bigint "area_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["area_id"], name: "index_area_credits_on_area_id"
    t.index ["career_id"], name: "index_area_credits_on_career_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "careers", force: :cascade do |t|
    t.string "bedelias_page"
    t.integer "required_credits"
    t.integer "expected_length"
    t.integer "plan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "careers_courses", force: :cascade do |t|
    t.bigint "career_id"
    t.bigint "course_id"
    t.index ["career_id"], name: "index_careers_courses_on_career_id"
    t.index ["course_id"], name: "index_careers_courses_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name", null: false
    t.integer "credits", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "institute_id"
    t.index ["institute_id"], name: "index_courses_on_institute_id"
  end

  create_table "courses_prerequisites", force: :cascade do |t|
    t.integer "course_id"
    t.integer "prerequisite_id"
  end

  create_table "exam_instances", force: :cascade do |t|
    t.bigint "exam_id"
    t.datetime "date"
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exam_id"], name: "index_exam_instances_on_exam_id"
  end

  create_table "exams", force: :cascade do |t|
    t.integer "status", default: 0
    t.datetime "expiration_date"
    t.integer "attempts", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_course_id"
    t.index ["user_course_id"], name: "index_exams_on_user_course_id"
  end

  create_table "institutes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jwt_blacklist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.index ["jti"], name: "index_jwt_blacklist_on_jti"
  end

  create_table "semesters", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "year"
    t.integer "credits"
    t.integer "total_credits"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_even", default: false
    t.index ["user_id"], name: "index_semesters_on_user_id"
  end

  create_table "user_courses", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "course_id"
    t.bigint "semester_id"
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_user_courses_on_course_id"
    t.index ["semester_id"], name: "index_user_courses_on_semester_id"
    t.index ["user_id"], name: "index_user_courses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
