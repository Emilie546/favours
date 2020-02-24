class AddEndTimeToFavours < ActiveRecord::Migration[5.2]
  def change
    add_column :favours, :end_time, :datetime
  end
end
