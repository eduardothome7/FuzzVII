require 'test_helper'

class UserPlanMonthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_plan_month = user_plan_months(:one)
  end

  test "should get index" do
    get user_plan_months_url
    assert_response :success
  end

  test "should get new" do
    get new_user_plan_month_url
    assert_response :success
  end

  test "should create user_plan_month" do
    assert_difference('UserPlanMonth.count') do
      post user_plan_months_url, params: { user_plan_month: { created_at: @user_plan_month.created_at, month: @user_plan_month.month, status: @user_plan_month.status, until_month_day: @user_plan_month.until_month_day, user_plan_id: @user_plan_month.user_plan_id, value: @user_plan_month.value, year: @user_plan_month.year } }
    end

    assert_redirected_to user_plan_month_url(UserPlanMonth.last)
  end

  test "should show user_plan_month" do
    get user_plan_month_url(@user_plan_month)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_plan_month_url(@user_plan_month)
    assert_response :success
  end

  test "should update user_plan_month" do
    patch user_plan_month_url(@user_plan_month), params: { user_plan_month: { created_at: @user_plan_month.created_at, month: @user_plan_month.month, status: @user_plan_month.status, until_month_day: @user_plan_month.until_month_day, user_plan_id: @user_plan_month.user_plan_id, value: @user_plan_month.value, year: @user_plan_month.year } }
    assert_redirected_to user_plan_month_url(@user_plan_month)
  end

  test "should destroy user_plan_month" do
    assert_difference('UserPlanMonth.count', -1) do
      delete user_plan_month_url(@user_plan_month)
    end

    assert_redirected_to user_plan_months_url
  end
end
