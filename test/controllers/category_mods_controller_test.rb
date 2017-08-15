require 'test_helper'

class CategoryModsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_mod = category_mods(:one)
  end

  test "should get index" do
    get category_mods_url
    assert_response :success
  end

  test "should get new" do
    get new_category_mod_url
    assert_response :success
  end

  test "should create category_mod" do
    assert_difference('CategoryMod.count') do
      post category_mods_url, params: { category_mod: { icon_id: @category_mod.icon_id, name: @category_mod.name, title: @category_mod.title } }
    end

    assert_redirected_to category_mod_url(CategoryMod.last)
  end

  test "should show category_mod" do
    get category_mod_url(@category_mod)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_mod_url(@category_mod)
    assert_response :success
  end

  test "should update category_mod" do
    patch category_mod_url(@category_mod), params: { category_mod: { icon_id: @category_mod.icon_id, name: @category_mod.name, title: @category_mod.title } }
    assert_redirected_to category_mod_url(@category_mod)
  end

  test "should destroy category_mod" do
    assert_difference('CategoryMod.count', -1) do
      delete category_mod_url(@category_mod)
    end

    assert_redirected_to category_mods_url
  end
end
