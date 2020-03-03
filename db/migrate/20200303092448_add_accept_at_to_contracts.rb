class AddAcceptAtToContracts < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :accept_at, :datetime
  end
end
