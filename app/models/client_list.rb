class ClientList < ApplicationRecord
  has_many :histore_orders
  def fullname
    "#{surname} #{name} #{patronymic}"
  end
end
