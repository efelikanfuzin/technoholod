class PagesController < ApplicationController
  layout 'application'
  before_action :set_meta_information

  def index
    @stocks = Stock.limit(7)
  end

  def about
  end

  private

  def set_meta_information
    page = Page.find_by(name: :index)
    render status: 404 and return unless page
    @title, @description, @keywords = page.title, page.description, page.keywords
  end
end
