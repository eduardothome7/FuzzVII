class PlanModsController < ApplicationController
  before_action :set_plan_mod, only: [:show, :edit, :update, :destroy]

  # GET /plan_mods
  # GET /plan_mods.json
  def index
    @plan_mods = PlanMod.all
  end

  # GET /plan_mods/1
  # GET /plan_mods/1.json
  def show
  end

  # GET /plan_mods/new
  def new
    @plan_mod = PlanMod.new
  end

  # GET /plan_mods/1/edit
  def edit
  end

  # POST /plan_mods
  # POST /plan_mods.json
  def create
    @plan_mod = PlanMod.new(plan_mod_params)

    respond_to do |format|
      if @plan_mod.save
        format.html { redirect_to @plan_mod, notice: 'Plan mod was successfully created.' }
        format.json { render :show, status: :created, location: @plan_mod }
      else
        format.html { render :new }
        format.json { render json: @plan_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_mods/1
  # PATCH/PUT /plan_mods/1.json
  def update
    respond_to do |format|
      if @plan_mod.update(plan_mod_params)
        format.html { redirect_to @plan_mod, notice: 'Plan mod was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan_mod }
      else
        format.html { render :edit }
        format.json { render json: @plan_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_mods/1
  # DELETE /plan_mods/1.json
  def destroy
    @plan_mod.destroy
    respond_to do |format|
      format.html { redirect_to plan_mods_url, notice: 'Plan mod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_mod
      @plan_mod = PlanMod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_mod_params
      params.require(:plan_mod).permit(:plan_id, :mod_id)
    end
end
