class AddFavourSkuToFavours < ActiveRecord::Migration[5.2]
  def change
    add_column :favours, :favour_sku, :string
  end
end
