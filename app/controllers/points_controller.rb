class PointsController < ApplicationController
  def create
    Point.create(point_params)
    redirect_to root_path
  end

  private

  def point_params
    params.require(:point).permit!
  end
end
