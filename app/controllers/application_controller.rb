class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :pageslinks

  def pageslinks
    @pages = Page.all
  end


end
