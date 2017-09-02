class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :user_mods

  def user_mods
  	User.where("name == 'admin'").first.admin = true
  	@category_mods = CategoryMod.includes(:mods).where.not(mods: { id: nil})
  end

end
