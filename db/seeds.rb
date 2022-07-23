# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

Byway.destroy_all

CSV.foreach('./db/data/api_scenic_byways.csv', { headers: true, header_converters: :symbol }) do |row|
  Byway.create!(
    id: row[:id].to_i,
    route_type: row[:route_type],
    route_name: row[:route_name],
    image_path: row[:image_path],
    website1: row[:website1],
    us_state: row[:us_state],
    website2_state: row[:website2_state],
    website2: row[:website2],
    miles: row[:miles],
    trip_info: row[:trip_info],
    start: row[:beginning],
    finish: row[:ending]
  )
end
