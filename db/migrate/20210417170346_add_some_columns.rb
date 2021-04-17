class AddSomeColumns < ActiveRecord::Migration[6.0]
  def change
    add_reference :points, :user, index: true
    add_column :users, :name, :string
  end
end
