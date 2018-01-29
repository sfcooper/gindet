class HomeController <ApplicationController

  def index
    @last3gins = Gin.order("created_at DESC").first(3)
    @last3bars = Bar.order("created_at DESC").first(3)
  end

end
