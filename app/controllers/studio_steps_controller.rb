class StudioStepsController < ApplicationController

  include Wicked::Wizard
  steps :location, :timetable, :contact, :picture, :finish
  # before_action :set_room

  def show
    @studio = Studio.find(session[:studio_id] )
  	render_wizard
  end

  def update
    @studio = Studio.find(session[:studio_id])
    params[:studio][:status] = step
    @studio.update(studio_params)
    render_wizard @studio
  end

  private
  
  def finish_wizard_path
    studio_path(@studio)
  end

  def studio_params
    params.require(:studio).permit(:name, :social_name, :cnpj, :email, :description, :user_id, :cep, :address, :city, :uf, :picture, :open_at, :close_at, :telephone, :celphone, :facebook, :instagram, :site, :n, :ngb)
  end

end
