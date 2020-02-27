class DestroyFavouridToPayments < ActiveRecord::Migration[5.2]
  def change
    remove_column :payments, :favour_id
  end
end
