class SessionsController < ApplicationController
  def new
  end

  def create
    @usuario = Usuario.find_by(cpf: params[:session][:cpf])
    if @usuario && @usuario.authenticate(params[:session][:password])
      flash.now[:danger] = "Usuario criado com sucesso"
      sign_in(@usuario)
      redirect_to usuario_path(@usuario)
    else
      flash.now[:danger] = "CPF ou senha inválidos"
      render 'new'
    end
  end

  def destroy
    flash[:alert] = "Usuario deslogado"
    sign_out
    redirect_to root_path
  end
end
