class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.references :user, foreign_key: true
      t.references :favour, foreign_key: true
      t.datetime :cancelled_at

      t.timestamps
    end
  end
end
