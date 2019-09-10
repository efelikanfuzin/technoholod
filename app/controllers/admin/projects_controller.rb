# frozen_string_literal: true

module Admin
  class ProjectsController < Admin::ApplicationController
    def find_resource(param)
      Project.friendly.find(param)
    end

    def resource_params
      params.require(resource_name).permit(
        :title, :content, :preview, :preview_img,
        :keywords, :description, :slug, photos: []
      )
    end
  end
end
