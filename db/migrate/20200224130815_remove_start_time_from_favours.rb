class RemoveStartTimeFromFavours < ActiveRecord::Migration[5.2]
  def change
    remove_column :favours, :start_time, :time
  end
end
