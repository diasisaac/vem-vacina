class ApplicationController < ActionController::Base
    include SessionsHelper
  
    def authorize
      unless logged_in?
        redirect_to root_path
      end
    end
  
    def correct_usuario?
      @usuario = Usuario.find(params[:id])
      unless current_usuario == @usuario
        redirect_to usuarios_path
      end
    end
  end
  