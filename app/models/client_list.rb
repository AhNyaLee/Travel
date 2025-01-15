class ClientList < ApplicationRecord
  def fullname
    "#{surname} #{name} #{patronymic}"
  end
end
