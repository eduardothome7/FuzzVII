class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  layout "layout"

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    if current_user
      if current_user.admin?
        redirect_to mods_path
      else
        redirect_to events_path
      end
      super
    end
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  def after_sign_in_path_for(resource_or_scope)
    session.fetch 'user_return_to', user_path
  end

  
  # protected   
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
