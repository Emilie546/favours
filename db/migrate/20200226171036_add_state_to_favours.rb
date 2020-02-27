class AddStateToFavours < ActiveRecord::Migration[5.2]
  def change
    add_column :favours, :state, :string
  end
end
