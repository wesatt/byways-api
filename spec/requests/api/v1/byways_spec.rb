# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Byways', type: :request do
  describe 'GET /api/v1/byways index' do
    it 'returns a json of all the byways' do
      Rails.application.load_seed
      get '/api/v1/byways'

      byways = json[:data]

      expect(response).to be_successful
      expect(byways.count).to eq(42)
      expect(byways).to be_a(Array)
      byways.each do |byway|
        expect(byway).to be_a(Hash)
        expect(byway.keys).to include(:id, :type, :attributes)
        expect(byway[:attributes]).to include(
          :id,
          :route_type,
          :route_name,
          :image_path,
          :website1,
          :us_state,
          :website2_state,
          :website2,
          :miles,
          :trip_info,
          :start,
          :finish
        )
      end
    end
  end

  describe 'GET /api/v1/byways show' do
    it 'returns a json of all the byways' do
      Rails.application.load_seed
      get '/api/v1/byways/1'

      byway = json[:data]

      expect(response).to be_successful
      expect(byway).to be_a(Hash)
      expect(byway.keys).to include(:id, :type, :attributes)
      expect(byway[:attributes]).to include(
        :id,
        :route_type,
        :route_name,
        :image_path,
        :website1,
        :us_state,
        :website2_state,
        :website2,
        :miles,
        :trip_info,
        :start,
        :finish
      )
    end
  end
end
