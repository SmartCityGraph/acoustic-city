class AddToPoint < ActiveRecord::Migration[6.0]
  def change
    add_column :points, :wind, :boolean, default: false
    add_column :points, :park, :boolean, default: false
    add_column :points, :shosse, :boolean, default: false
    add_column :points, :road, :boolean, default: false
    add_column :points, :yard, :boolean, default: false
    add_column :points, :building, :boolean, default: false
  end
end
