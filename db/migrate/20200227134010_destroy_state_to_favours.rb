class DestroyStateToFavours < ActiveRecord::Migration[5.2]
  def change
    remove_column :favours, :state
  end
end
