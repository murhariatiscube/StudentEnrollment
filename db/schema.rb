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

ActiveRecord::Schema.define(:version => 20121107230848) do

  create_table "class_teachers", :force => true do |t|
    t.integer  "teacher_id"
    t.string   "year"
    t.boolean  "classteach"
    t.string   "tname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "class_teachers", ["teacher_id", "year"], :name => "index_class_teachers_on_teacher_id_and_year"

  create_table "clerks", :force => true do |t|
    t.string   "name"
    t.integer  "mob"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lessons", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "no"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "lessons", ["subject_id"], :name => "index_lessons_on_subject_id"

  create_table "student_subjects", :force => true do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "student_subjects", ["subject_id", "student_id"], :name => "index_student_subjects_on_subject_id_and_student_id"

  create_table "students", :force => true do |t|
    t.string   "year"
    t.integer  "clerk_id",   :default => 1
    t.string   "sfname"
    t.string   "slname"
    t.date     "DOB"
    t.string   "gender"
    t.integer  "mob"
    t.float    "per"
    t.string   "email"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "students", ["clerk_id"], :name => "index_students_on_clerk_id"
  add_index "students", ["year"], :name => "index_students_on_year"

  create_table "subject_teachers", :force => true do |t|
    t.integer  "teacher_id"
    t.integer  "subject_id"
    t.string   "sub_name"
    t.string   "tname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "subject_teachers", ["subject_id", "teacher_id"], :name => "index_subject_teachers_on_subject_id_and_teacher_id"

  create_table "subjects", :force => true do |t|
    t.string   "sub_name"
    t.string   "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teachers", :force => true do |t|
    t.string   "tname"
    t.integer  "mob"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
