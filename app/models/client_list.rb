class ClientList < ApplicationRecord
  has_many :histore_orders, dependent: :destroy
  def fullname
    "#{surname} #{name} #{patronymic}"
  end
end
