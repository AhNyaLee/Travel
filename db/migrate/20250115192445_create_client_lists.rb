class CreateClientLists < ActiveRecord::Migration[8.0]
  def change
    create_table :client_lists do |t|
      t.integer :id_client, index: true
      t.text :name
      t.text :surname
      t.text :patronymic
      t.date :birthday
      t.text :email
      t.text :phone

      t.timestamps
    end
  end
end
