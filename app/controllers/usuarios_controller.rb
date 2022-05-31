class UsuariosController < ApplicationController
  before_action :authorize, except: [:new, :create]
  before_action :correct_usuario?, only: [:edit, :update, :destroy]

  def new
    @usuario = Usuario.new
    @usuario.build_endereco
  end

  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      flash[:success] = "Usuario cadastrado"
      redirect_to root_path

    else
      render 'new'
    end
  end

  def index
    @usuarios = Usuario.all
  end

  def show
    @usuario = Usuario.find(params[:id])
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def update
    @usuario = Usuario.find(params[:id])
    if current_usuario.update(usuario_params)
      redirect_to @usuario, notice: "Usuario atualizado com sucesso"

    else
      render action: :edit
    end
  end

  def destroy
    if current_usuario.update(usuario_params)
      @usuario.destroy
      sign_out
      redirect_to root_path
    end

  end

  private


  def usuario_params
    params.require(:usuario).permit(:nome_completo, :data_nascimento,:cpf,:nome_mae, :telefone, :email, :num_sus, :password, {:endereco_attributes => [:logradouro, :complemento, :cep, :bairro, :cidade]})

  end

end
