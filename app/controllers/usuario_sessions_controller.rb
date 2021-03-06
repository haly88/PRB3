class UsuarioSessionsController < ApplicationController
  
  skip_before_filter :require_login, except: [:destroy]
  
  def new
    @usuario = Usuario.new
  end
  
  def create
    if @usuario = login(params[:email], params[:password])
      redirect_back_or_to(welcome_path, message: "Login exitoso") 
    else
      flash.now[:alert] = "Mail o Password incorrectos"
      render action: :new 
    end
  end
  
  def destroy
    logout
    redirect_to(welcome_path, notice: 'Logged out')
  end
  
  
end