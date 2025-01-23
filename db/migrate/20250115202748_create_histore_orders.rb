class CreateHistoreOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :histore_orders do |t|
      t.integer :number_order
      t.text :name
      t.date :start_date
      t.date :end_date
      t.integer :price
      t.references :id_client, foreign_key: { to_table: :client_lists }, column: :id_client
      t.references :country, foreign_key: { to_table: :countries }, column: :country_id

      t.timestamps
    end

  end
end