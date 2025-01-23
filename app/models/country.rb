class Country < ApplicationRecord
  has_many :histore_order

  validates :name, :country_code, :currency, presence: true
  validates :language,:timezone, :capital, presence: false

end
