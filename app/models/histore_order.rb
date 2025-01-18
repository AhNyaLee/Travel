class HistoreOrder < ApplicationRecord
  has_many :country, class_name: 'Country', foreign_key: 'country_id', autosave: true
  belongs_to :client, class_name: 'ClientList', foreign_key: 'id_client', autosave: true

   # Получаем массив идентификаторов стран
   def country_ids_array
    country_id.split(',').map(&:strip).reject(&:empty?)
  end

  # Получаем объекты стран по идентификаторам
  def countries
    Country.where(id: country_ids_array)
  end

  
end
