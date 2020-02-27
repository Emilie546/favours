class AddCheckoutSessionIdToFavours < ActiveRecord::Migration[5.2]
  def change
    add_column :favours, :checkout_session_id, :string
  end
end
