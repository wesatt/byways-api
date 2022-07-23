# frozen_string_literal: true

FactoryBot.define do
  factory :byway do
    route_type { 'MyString' }
    route_name { 'MyString' }
    image_path { 'MyString' }
    website1 { 'MyString' }
    us_state { 'MyString' }
    website2_state { 'MyString' }
    website2 { 'MyString' }
    miles { 1.5 }
    trip_info { 'MyString' }
    start { 'MyString' }
    finish { 'MyString' }
  end
end
