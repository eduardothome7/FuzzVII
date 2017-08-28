class CategoryModsController < ApplicationController
  before_action :set_category_mod, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  # GET /category_mods
  # GET /category_mods.json
  def index
    @category_mods = CategoryMod.all
  end

  # GET /category_mods/1
  # GET /category_mods/1.json
  def show
  end

  # GET /category_mods/new
  def new
    @category_mod = CategoryMod.new
  end

  # GET /category_mods/1/edit
  def edit
  end

  # POST /category_mods
  # POST /category_mods.json
  def create
    @category_mod = CategoryMod.new(category_mod_params)

    respond_to do |format|
      if @category_mod.save
        format.html { redirect_to @category_mod, notice: 'Category mod was successfully created.' }
        format.json { render :show, status: :created, location: @category_mod }
      else
        format.html { render :new }
        format.json { render json: @category_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_mods/1
  # PATCH/PUT /category_mods/1.json
  def update
    respond_to do |format|
      if @category_mod.update(category_mod_params)
        format.html { redirect_to @category_mod, notice: 'Category mod was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_mod }
      else
        format.html { render :edit }
        format.json { render json: @category_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_mods/1
  # DELETE /category_mods/1.json
  def destroy
    @category_mod.destroy
    respond_to do |format|
      format.html { redirect_to category_mods_url, notice: 'Category mod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_mod
      @category_mod = CategoryMod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_mod_params
      params.require(:category_mod).permit(:title, :name, :icon_id)
    end
end
