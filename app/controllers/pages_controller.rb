class PagesController < ActionController::Base
  layout 'application'

  def index
    page = Page.find_by(name: :index)
    return unless page
    @title = page.title
    @description = page.description
    @keywords = page.keywords
  end
end
