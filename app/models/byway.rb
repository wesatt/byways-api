# frozen_string_literal: true

class Byway < ApplicationRecord
  validates_presence_of(:route_type)
  validates_presence_of(:route_name)
end
