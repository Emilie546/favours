class RemoveEndTimeFromFavours < ActiveRecord::Migration[5.2]
  def change
    remove_column :favours, :end_time, :time
  end
end
