class Usuario < ApplicationRecord
  has_secure_password

  enum role: {Usuario: 0, Admin: 1}

  validates :nome_completo, presence: true, length: {minimum:5}, numericality: false
  validate :valida_data
  validates :cpf, presence: true, uniqueness: true, length: {is: 11}
  validates :nome_mae, presence: true, length: {minimum:5}
  validates :num_sus, presence: true, length: {minimum:6}
  validates :email, presence: true, length:{maximum: 255}, uniqueness:{case_sensitive: true}
  validates :telefone, presence: true, length: {minimum:8}, numericality: { only_integer: true }
  validates :password, presence: true, length: {minimum:6}


  def valida_data
    if  data_nascimento.present? && data_nascimento > Date.today
      errors.add(:data, " A data deve ser de hoje ou anterior")
    end
  end

  def set_default_role
    self.role ||= :user
  end

end
