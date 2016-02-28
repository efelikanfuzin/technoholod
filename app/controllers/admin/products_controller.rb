module Admin
  class ProductsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Product.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
    def find_resource(param)
      Product.friendly.find(param)
    end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
    # def resource_params
    #   params.require(resource_name).permit(:title, :price, :description, photos: [])
    # end
  end
end
