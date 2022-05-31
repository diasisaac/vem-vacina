module VacinacaosHelper
  def usuario_vacinacao
    Vacinacao.where(usuario_id: current_usuario.id)
  end
end
