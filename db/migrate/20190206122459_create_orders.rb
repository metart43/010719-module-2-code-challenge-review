class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.boolean :sent
      t.integer :customer_id

      t.timestamps
    end
  end
end
