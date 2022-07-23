# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_220_723_212_551) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'byways', force: :cascade do |t|
    t.string 'route_type'
    t.string 'route_name'
    t.string 'image_path'
    t.string 'website1'
    t.string 'us_state'
    t.string 'website2_state'
    t.string 'website2'
    t.float 'miles'
    t.string 'trip_info'
    t.string 'start'
    t.string 'finish'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
