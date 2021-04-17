class HomeController < ApplicationController
  def index
    @points = Point.where.not(lat: [nil, 0.0], lon: [nil, 0.0])
  end

  def add
    @point = Point.new
  end



end
