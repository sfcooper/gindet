class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :pageslinks

  BRAND_NAME = 'the gin detective'.freeze

  def meta_title(title)
    [title, BRAND_NAME].reject(&:empty?).join(' | ')
  end

  def pageslinks
    @pages = Page.all
  end


end
