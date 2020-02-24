class AddStartTimeToFavours < ActiveRecord::Migration[5.2]
  def change
    add_column :favours, :start_time, :datetime
  end
end
