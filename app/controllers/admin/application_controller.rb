# frozen_string_literal: true

module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_user!
    before_action :default_params

    private

    def default_params
      resource_params = params.fetch(resource_name, {})
      order = resource_params.fetch(:order, 'created_at')
      direction = resource_params.fetch(:direction, 'desc')
      params[resource_name] = resource_params.merge(
        order: order,
        direction: direction
      )
    end
  end
end
