# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140521124851) do

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "children", :force => true do |t|
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "children_parents", :id => false, :force => true do |t|
    t.integer "child_id",  :null => false
    t.integer "parent_id", :null => false
  end

  add_index "children_parents", ["child_id", "parent_id"], :name => "index_children_parents_on_child_id_and_parent_id", :unique => true

  create_table "class_schedules", :force => true do |t|
    t.integer  "number"
    t.date     "date"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "address_id"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "limit"
    t.date     "startDate"
    t.date     "endDate"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "descriptions", :force => true do |t|
    t.integer  "course_id"
    t.integer  "dorder"
    t.string   "dtype"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "enrolments", :force => true do |t|
    t.date     "date"
    t.integer  "price"
    t.integer  "child_id"
    t.integer  "parent_id"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "instructors", :force => true do |t|
    t.string   "homepage"
    t.string   "credentials"
    t.integer  "profile_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "parents", :force => true do |t|
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "gender"
    t.integer  "age"
    t.string   "extra"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "role"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "user_id"
  end

  create_table "teach", :id => false, :force => true do |t|
    t.integer "course_id",     :null => false
    t.integer "instructor_id", :null => false
  end

  add_index "teach", ["course_id", "instructor_id"], :name => "index_teach_on_course_id_and_instructor_id", :unique => true

  create_table "testimonials", :force => true do |t|
    t.string   "text"
    t.string   "author"
    t.integer  "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.boolean  "active",          :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

end
