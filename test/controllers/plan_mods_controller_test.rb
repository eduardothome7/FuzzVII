require 'test_helper'

class PlanModsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_mod = plan_mods(:one)
  end

  test "should get index" do
    get plan_mods_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_mod_url
    assert_response :success
  end

  test "should create plan_mod" do
    assert_difference('PlanMod.count') do
      post plan_mods_url, params: { plan_mod: { mod_id: @plan_mod.mod_id, plan_id: @plan_mod.plan_id } }
    end

    assert_redirected_to plan_mod_url(PlanMod.last)
  end

  test "should show plan_mod" do
    get plan_mod_url(@plan_mod)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_mod_url(@plan_mod)
    assert_response :success
  end

  test "should update plan_mod" do
    patch plan_mod_url(@plan_mod), params: { plan_mod: { mod_id: @plan_mod.mod_id, plan_id: @plan_mod.plan_id } }
    assert_redirected_to plan_mod_url(@plan_mod)
  end

  test "should destroy plan_mod" do
    assert_difference('PlanMod.count', -1) do
      delete plan_mod_url(@plan_mod)
    end

    assert_redirected_to plan_mods_url
  end
end
