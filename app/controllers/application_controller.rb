class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def user_modules
  	@modules = Mod.all
  end

end
