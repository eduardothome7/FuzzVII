class StudiosController < ApplicationController
  before_action :set_studio, only: [:show, :edit, :update, :destroy]
  layout :set_layout
  before_action :set_mod
  # before_action :authenticate_user!
  $mod_title = "Estúdios"

  # GET /studios
  # GET /studios.json
  def index
    @studios = Studio.all
    @mod_title = $mod_title
  end

  # GET /studios/1
  # GET /studios/1.json
  def show
  end

  # GET /studios/new
  def new
    @studio = Studio.new
    @mod_title = "<a href='/studios'>#{$mod_title}</a> ><span>Incluir Estúdio</span>" 
  end

  def get_by_name
    # @studio = Studio.search(params[:name])
    respond_to do |format|
      format.js 
    end
  end

  # GET /studios/1/edit
  def edit
  end

  # POST /studios
  # POST /studios.json
  def create
    @studio = Studio.new(studio_params)

    if @studio.save
      session[:studio_id] = @studio.id
      redirect_to studio_steps_path 
    else
      render :new
    end

  end

  # PATCH/PUT /studios/1
  # PATCH/PUT /studios/1.json
  def update
    respond_to do |format|
      if @studio.update(studio_params)
        session[:studio_id] = @studio.id
        format.html { redirect_to studio_steps_path, notice: 'Studio was successfully updated.' }
        format.json { render :show, status: :ok, location: @studio }
      else
        format.html { render :edit }
        format.json { render json: @studio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studios/1
  # DELETE /studios/1.json
  def destroy
    @studio.destroy
    respond_to do |format|
      format.html { redirect_to studios_url, notice: 'Studio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_layout
      case action_name
      when "index"
        "layout_banner"
      else
        "application"
      end
    end

    def set_mod
      @mod = Mod.find_by(slug: "studios")  
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_studio
      # @studio = Studio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studio_params
      params.require(:studio).permit(:name, :social_name, :cnpj, :email, :description, :user_id, :cep, :address, :city, :uf, :picture, :open_at, :close_at, :telephone, :celphone, :facebook, :instagram, :site, :n, :ngb)
    end
end
