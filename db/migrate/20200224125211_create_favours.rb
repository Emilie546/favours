class CreateFavours < ActiveRecord::Migration[5.2]
  def change
    create_table :favours do |t|
      t.string :name
      t.text :description
      t.time :start_time
      t.time :end_time
      t.integer :price
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
