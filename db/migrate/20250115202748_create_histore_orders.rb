class CreateHistoreOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :histore_orders do |t|
      t.integer :number_order
      t.text :name
      t.text :start_date
      t.text :end_date
      t.integer :price
      t.integer :id_client  
      t.text :country_id

      t.timestamps
    end

   
    add_foreign_key :histore_orders, :client_lists, column: :id_client

  end
end