class PagesController < ActionController::Base
  layout 'application'

  def index
    @title = 'Main'
  end
end
