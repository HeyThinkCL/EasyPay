module SessionsHelper
  def log_in(usuario)
    session[:usuario_id] = usuario.id
  end

  def current_user
    @current_user ||= Usuario.find_by(id: session[:usuario_id])
  end
end
