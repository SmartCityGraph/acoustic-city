class PointsController < ApplicationController
  before_action :set_point, only: [:edit, :update]
  def index
    @points = Point.all
  end

  def create
    Point.create(point_params)
    redirect_to root_path
  end

  def edit

  end

  def update
    @point.update(point_params)
    redirect_to points_path
  end

  private

  def set_point
    @point = Point.find(params[:id])
  end

  def point_params
    params.require(:point).permit!
  end
end
