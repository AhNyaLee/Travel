class CreateCountries < ActiveRecord::Migration[8.0]
  def change
    create_table :countries do |t|
      t.integer :country_id, index: true
      t.text :country_code
      t.text :name
      t.text :language
      t.text :currency
      t.text :timezone
      t.text :capital

      t.timestamps
    end

    add_foreign_key :countries, :histore_orders, column: :id_client
  end
end
