class UserPlansController < ApplicationController
  before_action :set_user_plan, only: [:show, :edit, :update, :destroy]

  # GET /user_plans
  # GET /user_plans.json
  def index
    @user_plans = UserPlan.all
  end

  # GET /user_plans/1
  # GET /user_plans/1.json
  def show
  end

  # GET /user_plans/new
  def new
    @user_plan = UserPlan.new
  end

  # GET /user_plans/1/edit
  def edit
  end

  # POST /user_plans
  # POST /user_plans.json
  def create
    @user_plan = UserPlan.new(user_plan_params)

    respond_to do |format|
      if @user_plan.save
        format.html { redirect_to @user_plan, notice: 'User plan was successfully created.' }
        format.json { render :show, status: :created, location: @user_plan }
      else
        format.html { render :new }
        format.json { render json: @user_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_plans/1
  # PATCH/PUT /user_plans/1.json
  def update
    respond_to do |format|
      if @user_plan.update(user_plan_params)
        format.html { redirect_to @user_plan, notice: 'User plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_plan }
      else
        format.html { render :edit }
        format.json { render json: @user_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_plans/1
  # DELETE /user_plans/1.json
  def destroy
    @user_plan.destroy
    respond_to do |format|
      format.html { redirect_to user_plans_url, notice: 'User plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_plan
      @user_plan = UserPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_plan_params
      params.require(:user_plan).permit(:user_id, :plan_id, :payment_type, :value, :duration_months, :status, :created_at, :cancelled_at)
    end
end
