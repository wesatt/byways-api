# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Byway, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:route_type) }
    it { should validate_presence_of(:route_name) }
  end
end
