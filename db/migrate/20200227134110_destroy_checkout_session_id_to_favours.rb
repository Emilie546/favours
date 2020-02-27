class DestroyCheckoutSessionIdToFavours < ActiveRecord::Migration[5.2]
  def change
    remove_column :favours, :checkout_session_id
  end
end
