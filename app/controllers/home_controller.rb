class HomeController < ApplicationController
  def index
    @points = Point.where.not(lat: [nil, 0.0], lon: [nil, 0.0])
  end

  def add
    @point = Point.new
  end

  def get_csv
    csv = to_csv(Point.all.order(id: :desc))
    send_data csv, :type => 'text/csv; charset=utf-8; header=present', :disposition => "attachment; filename=#{Date.today}.csv"
  end

  def heatmap
    @points = Point.where.not(lat: [nil, 0.0], lon: [nil, 0.0])
  end

  private
  require 'csv'
  def to_csv(collection)
    attributes = collection.first.attribute_names
    CSV.generate(headers: true) do |csv|
      csv << attributes
      collection.each do |instance|
        csv << attributes.map{ |attr| instance.send(attr) }
      end
    end
  end
end
