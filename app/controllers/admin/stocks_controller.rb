# frozen_string_literal: true

module Admin
  class StocksController < Admin::ApplicationController
    def find_resource(param)
      Stock.friendly.find(param)
    end
  end
end
