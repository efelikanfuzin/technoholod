class PagesController < ActionController::Base
  layout 'application'
  before_action :set_meta_information

  def index
  end

  private

  def set_meta_information
    page = Page.find_by(name: :index)
    render status: 404 and return unless page
    @title, @description, @keywords = page.title, page.description, page.keywords
  end
end
