class HomeController < ApplicationController
  def index
    @gbeans = Stock.all
    @roasts = Roast.includes(:comments).order("created_at DESC").limit(4)
    @items = Item.order("created_at DESC").limit(4)
  end

  def brewing
  end

  def hario
  end

  def stovetop
  end

  def aeropress
  end

  def french_press
  end
  
end
