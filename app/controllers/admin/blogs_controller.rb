# frozen_string_literal: true

module Admin
  class BlogsController < Admin::ApplicationController
    def find_resource(param)
      Blog.friendly.find(param)
    end
  end
end
