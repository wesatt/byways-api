# frozen_string_literal: true

module Api
  module V1
    class BywaysController < ApplicationController
      def index
        byways = Byway.all
        render json: BywaySerializer.new(byways)
      end

      def show
        byway = Byway.find(params[:id])
        render json: BywaySerializer.new(byway)
      end
    end
  end
end
