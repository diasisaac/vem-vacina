class Vacinacao < ApplicationRecord
  belongs_to :usuario
  belongs_to :vacina

  validates :data, presence: true
  validates :horario, presence: true
  validates :desc_local, presence: true, length: {minimum: 5}


  def valida_data
    if  data.present? && data < Time.zone.today
      errors.add(:data, " A data deve ser futura")
    end
  end
end
