class AddRefuseAtToContracts < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :refuse_at, :datetime
  end
end
