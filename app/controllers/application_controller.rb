class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_meta_information
  layout 'application'

  private

  def not_found
    raise ActionController::RoutingError, 'Not Found'
  end

  def set_meta_information
    page = Page.find_by(name: "#{params[:controller]}_#{params[:action]}")
    set_meta_tags title: page.try(:title),
                  description: page.try(:description),
                  keywords: page.try(:keywords)
  end
end
