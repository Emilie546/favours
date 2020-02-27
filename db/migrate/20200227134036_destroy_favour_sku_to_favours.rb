class DestroyFavourSkuToFavours < ActiveRecord::Migration[5.2]
  def change
    remove_column :favours, :favour_sku
  end
end
