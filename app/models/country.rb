class Country < ApplicationRecord
  belongs_to :histore_orders, class_name: 'HistoreOrder', foreign_key: 'country_id', autosave: true, dependent: :destroy
  def countries
    Country.where(id: country_ids)
  end
end
