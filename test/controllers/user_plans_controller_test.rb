require 'test_helper'

class UserPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_plan = user_plans(:one)
  end

  test "should get index" do
    get user_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_user_plan_url
    assert_response :success
  end

  test "should create user_plan" do
    assert_difference('UserPlan.count') do
      post user_plans_url, params: { user_plan: { cancelled_at: @user_plan.cancelled_at, created_at: @user_plan.created_at, duration_months: @user_plan.duration_months, payment_type: @user_plan.payment_type, plan_id: @user_plan.plan_id, status: @user_plan.status, user_id: @user_plan.user_id, value: @user_plan.value } }
    end

    assert_redirected_to user_plan_url(UserPlan.last)
  end

  test "should show user_plan" do
    get user_plan_url(@user_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_plan_url(@user_plan)
    assert_response :success
  end

  test "should update user_plan" do
    patch user_plan_url(@user_plan), params: { user_plan: { cancelled_at: @user_plan.cancelled_at, created_at: @user_plan.created_at, duration_months: @user_plan.duration_months, payment_type: @user_plan.payment_type, plan_id: @user_plan.plan_id, status: @user_plan.status, user_id: @user_plan.user_id, value: @user_plan.value } }
    assert_redirected_to user_plan_url(@user_plan)
  end

  test "should destroy user_plan" do
    assert_difference('UserPlan.count', -1) do
      delete user_plan_url(@user_plan)
    end

    assert_redirected_to user_plans_url
  end
end
