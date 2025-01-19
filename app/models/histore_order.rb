class HistoreOrder < ApplicationRecord
  has_many :country, class_name: 'Country', foreign_key: 'country_id', autosave: true
  belongs_to :client, class_name: 'ClientList', foreign_key: 'id_client', autosave: true
  
end
