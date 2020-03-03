class AddIconsToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :icons, :string
  end
end
