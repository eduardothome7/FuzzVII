class PagesController < ApplicationController
  layout :set_layout
  before_action :authenticate_user!, only: [:tour]

  def about
  end

  def terms
  end

  def tour
  	@modTours = ModTour.all
  end

  def plans
  end

  private

  def set_layout
    case action_name
    when "tour"
      "layout_fluid"
    else
      "application"
    end
  end

end
