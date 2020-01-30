class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.boolean :active
      t.boolean :shipped
      t.string :tracking_id
      t.integer :quantity
      t.float :total
      t.integer :user_id
      
      t.timestamps
    end
  end
end
