class HomeController <ApplicationController

  def index
    @last4gins = Gin.order("created_at DESC").first(4)
    @last3bars = Bar.order("created_at DESC").first(3)
    @topblogs = Blog.most_hit(1.week.ago, 3)
    @mostviewedgins = Gin.most_hit(1.day.ago, 3)
  end

end
