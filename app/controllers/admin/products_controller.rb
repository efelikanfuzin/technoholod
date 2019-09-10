# frozen_string_literal: true

module Admin
  class ProductsController < Admin::ApplicationController
    def find_resource(param)
      Product.friendly.find(param)
    end
  end
end
