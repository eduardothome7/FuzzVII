class UserPlanMonthsController < ApplicationController
  before_action :set_user_plan_month, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /user_plan_months
  # GET /user_plan_months.json
  def index
    @user_plan_months = UserPlanMonth.all
  end

  # GET /user_plan_months/1
  # GET /user_plan_months/1.json
  def show
  end

  # GET /user_plan_months/new
  def new
    @user_plan_month = UserPlanMonth.new
  end

  # GET /user_plan_months/1/edit
  def edit
  end

  # POST /user_plan_months
  # POST /user_plan_months.json
  def create
    @user_plan_month = UserPlanMonth.new(user_plan_month_params)

    respond_to do |format|
      if @user_plan_month.save
        format.html { redirect_to @user_plan_month, notice: 'User plan month was successfully created.' }
        format.json { render :show, status: :created, location: @user_plan_month }
      else
        format.html { render :new }
        format.json { render json: @user_plan_month.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_plan_months/1
  # PATCH/PUT /user_plan_months/1.json
  def update
    respond_to do |format|
      if @user_plan_month.update(user_plan_month_params)
        format.html { redirect_to @user_plan_month, notice: 'User plan month was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_plan_month }
      else
        format.html { render :edit }
        format.json { render json: @user_plan_month.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_plan_months/1
  # DELETE /user_plan_months/1.json
  def destroy
    @user_plan_month.destroy
    respond_to do |format|
      format.html { redirect_to user_plan_months_url, notice: 'User plan month was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_plan_month
      @user_plan_month = UserPlanMonth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_plan_month_params
      params.require(:user_plan_month).permit(:user_plan_id, :month, :year, :until_month_day, :status, :value, :created_at)
    end
end
