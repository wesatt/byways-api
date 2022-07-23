# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Welcomes', type: :feature do
  describe 'Root Path' do
    it 'has a welcome page' do
      visit root_path

      expect(page).to have_content('Welcome to the Byways API')
    end
  end
end
