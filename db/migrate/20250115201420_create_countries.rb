class CreateCountries < ActiveRecord::Migration[8.0]
  def change
    create_table :countries do |t|
      t.text :country_code
      t.text :name
      t.text :language
      t.text :currency
      t.text :timezone
      t.text :capital

      t.timestamps
    end

    add_foreign_key :countries, :histore_orders, column: :country_id
  end
end
