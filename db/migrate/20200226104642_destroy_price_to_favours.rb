class DestroyPriceToFavours < ActiveRecord::Migration[5.2]
  def change
    remove_column :favours, :price
  end
end
