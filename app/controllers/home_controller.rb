class HomeController <ApplicationController

  def index
    @last4gins = Gin.order("created_at DESC").first(4)
    @last3bars = Bar.order("created_at DESC").first(3)
    @topblogs = Blog.most_hit(1.week.ago, 3)
    @mostviewedgins = Gin.most_hit(1.day.ago, 3)
    @meta_title = meta_title 'gin reviews for the best gins around the world'
    @meta_description = 'gin reviews, tasting notes, botanicals and serving suggestions'
  end

end
