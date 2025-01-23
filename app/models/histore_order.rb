class HistoreOrder < ApplicationRecord
  has_many :country, class_name: 'Country', foreign_key: 'country_id', autosave: true
  belongs_to :client, class_name: 'ClientList', foreign_key: 'id_client', autosave: true
  

  validates :number_order, :name, :start_date, :end_date, :price, :id_client, :country_id, presence: true
  validate :start_date_before_end_date
  validates :number_order, uniqueness: true
  private

  def start_date_before_end_date
    if start_date.present? && end_date.present? && start_date >= end_date
      errors.add(:end_date, "должен быть позже даты начала")
    end
  end
  
end
