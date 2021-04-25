class AddByHandToPoints < ActiveRecord::Migration[6.0]
  def change
    add_column :points, :by_hand, :boolean, default: false
  end
end
