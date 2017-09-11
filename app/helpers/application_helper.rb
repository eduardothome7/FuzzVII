module ApplicationHelper
  def user_mods
  	return CategoryMod.includes(:mods).where.not(mods: { id: nil})
  end
end
