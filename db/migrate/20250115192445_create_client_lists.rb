class CreateClientLists < ActiveRecord::Migration[8.0]
  def change
    create_table :client_lists do |t|
      t.integer :id
      t.text :name
      t.text :surname
      t.text :patronymic
      t.text :birthday
      t.text :email
      t.text :phone

      t.timestamps
    end
  end
end
