class Usuario < ApplicationRecord
  has_secure_password

  has_one :endereco, :dependent => :destroy
  has_many :vacinacaos
  accepts_nested_attributes_for :endereco, allow_destroy: true

  validates :nome_completo, presence: true, length: {minimum:5}, numericality: false
  validate :valida_data
  validates :cpf, presence: true, uniqueness: true, length: {is: 11}
  validates :nome_mae, presence: true, length: {minimum:5}
  validates :num_sus, presence: true, length: {minimum:6}
  validates :email, presence: true, length:{maximum: 255}, uniqueness:{case_sensitive: true}
  validates :telefone, presence: true, length: {minimum:8}
  validates :password, presence: true, length: {minimum:6}

  def valida_data
    if  data_nascimento.present? && data_nascimento > Time.zone.today
      errors.add(:data, " A data deve ser de hoje ou anterior")
    end
  end

  # Roles available to each user
  enum role: { Usuario: 0, Admin: 1 }
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :usuario
  end

end
