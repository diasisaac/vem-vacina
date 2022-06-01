class ApplicationController < ActionController::Base
    include SessionsHelper
  
    def authorize
      unless logged_in?
        redirect_to root_path
      end
    end
  
    def correct_usuario?
      if logged_in?
        @usuario = Usuario.find(params[:id])
        unless current_usuario == @usuario or current_usuario.Admin?
          redirect_to @usuario
        end
      else
        redirect_to root_path
      end
    end

    def authorize_admin
      if logged_in?
        unless current_usuario.Admin?
          flash[:danger] = "Voce nao tem privilegios no sistema"
          redirect_to current_usuario
        end
      else
        flash[:danger] = "Usuario deslogado"
        redirect_to root_path
      end
    end
end