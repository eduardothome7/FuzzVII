class ModToursController < ApplicationController
  before_action :set_mod_tour, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /mod_tours
  # GET /mod_tours.json
  def index
    @mod_tours = ModTour.all
  end

  # GET /mod_tours/1
  # GET /mod_tours/1.json
  def show
  end

  # GET /mod_tours/new
  def new
    @mod_tour = ModTour.new
  end

  # GET /mod_tours/1/edit
  def edit
  end

  # POST /mod_tours
  # POST /mod_tours.json
  def create
    @mod_tour = ModTour.new(mod_tour_params)

    respond_to do |format|
      if @mod_tour.save
        format.html { redirect_to @mod_tour, notice: 'Mod tour was successfully created.' }
        format.json { render :show, status: :created, location: @mod_tour }
      else
        format.html { render :new }
        format.json { render json: @mod_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mod_tours/1
  # PATCH/PUT /mod_tours/1.json
  def update
    respond_to do |format|
      if @mod_tour.update(mod_tour_params)
        format.html { redirect_to @mod_tour, notice: 'Mod tour was successfully updated.' }
        format.json { render :show, status: :ok, location: @mod_tour }
      else
        format.html { render :edit }
        format.json { render json: @mod_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mod_tours/1
  # DELETE /mod_tours/1.json
  def destroy
    @mod_tour.destroy
    respond_to do |format|
      format.html { redirect_to mod_tours_url, notice: 'Mod tour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mod_tour
      @mod_tour = ModTour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mod_tour_params
      params.require(:mod_tour).permit(:title, :mod_id, :picture, :description, :background-color, :a_link)
    end
end
