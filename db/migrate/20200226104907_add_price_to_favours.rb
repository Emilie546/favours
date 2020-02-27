class AddPriceToFavours < ActiveRecord::Migration[5.2]
  def change
    add_monetize :favours, :price, currency: { present: false }
  end
end
