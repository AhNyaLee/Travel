class ClientList < ApplicationRecord
  has_many :histore_orders

  validates :id_client, :surname, :name, :patronymic, :birthday, :phone, presence: true
  validates :email, presence: false
  validate :birthday_not_today_or_future
  
  def fullname
    "#{surname} #{name} #{patronymic}"
  end

  private
  def birthday_not_today_or_future
    if birthday.present?
      birthday_date = Date.strptime(birthday, '%Y-%m-%d')
      if (birthday_date >= Date.today )
        errors.add(:birthday, "должен быть не сегодняшним днем и не в будущем, а как минимум неделю назад")
      end
    else
      errors.add(:birthday, "не может быть пустым")
    end
  end
end
