class Vacina < ApplicationRecord


  has_one :vacinacao

  validates :nome_vacina, presence: true
  validates :num_lote, presence: true
  validates :data_validade, presence: true
  validate :valida_data

  def valida_data
    if  data_validade.present? && data_validade < Time.zone.today
      errors.add(:data, " A data deve ser futura")
    end
  end


end
