class CreatePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :points do |t|
      t.float :decibel
      t.integer :frequency
      t.integer :minutes
      t.datetime :date
      t.text :comment
      t.float :lat
      t.float :lon
      t.timestamps
    end
  end
end
