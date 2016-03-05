class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_meta_information
  layout 'application'

  private

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  def set_meta_information
    page = Page.find_by(name: params[:action])
    if page
      @title, @description, @keywords = page.title, page.description, page.keywords
    end
  end
end
