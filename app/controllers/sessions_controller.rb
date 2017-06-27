class SessionsController < ApplicationController
  def new
    render :layout => "session"
  end

  def create
    usuario = Usuario.find_by(email: params[:session][:email].downcase)
    if usuario && usuario.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in usuario
      redirect_to productos_path
    else
      # Create an error message.
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy

  end

end
