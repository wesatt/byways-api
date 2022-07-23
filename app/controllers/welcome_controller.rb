# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    render html: 'Welcome to the Byways API'
  end
end
