class PointsController < ApplicationController
  before_action :set_point, only: [:edit, :update, :destroy]
  def index
    @points = Point.all
  end

  def create
    current_user.points.create(point_params)
    redirect_to root_path
  end

  def edit

  end

  def update
    #redirect_back(fallback_location: root_path) unless @point.user == current_user
    @point.update(point_params)
    redirect_to points_path
  end

  def destroy
    redirect_to points_path unless @point.user == current_user
    @point.destroy
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
