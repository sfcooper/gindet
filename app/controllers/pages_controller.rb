class PagesController < ActionController::Base
  protect_from_forgery with: :exception
  include HighVoltage::StaticPage

  layout 'pages'
end
