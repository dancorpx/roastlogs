class HomeController < ApplicationController
  def index
    @gbeans = Stock.all
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
