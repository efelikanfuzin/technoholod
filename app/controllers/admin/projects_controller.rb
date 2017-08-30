module Admin
  class ProjectsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Product.all.paginate(10, params[:page])
    # end

    def find_resource(param)
      Project.friendly.find(param)
    end

    # Define a custom finder by overriding the `find_resource` method:

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
    def resource_params
      params.require(resource_name).permit(
        :title, :content, :preview, :preview_img,
        :keywords, :description, :slug, photos: []
      )
    end
  end
end
