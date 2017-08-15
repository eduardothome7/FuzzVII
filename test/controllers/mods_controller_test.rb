require 'test_helper'

class ModsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mod = mods(:one)
  end

  test "should get index" do
    get mods_url
    assert_response :success
  end

  test "should get new" do
    get new_mod_url
    assert_response :success
  end

  test "should create mod" do
    assert_difference('Mod.count') do
      post mods_url, params: { mod: { category_mod_id: @mod.category_mod_id, description: @mod.description, icon: @mod.icon, name: @mod.name, slug: @mod.slug, title: @mod.title } }
    end

    assert_redirected_to mod_url(Mod.last)
  end

  test "should show mod" do
    get mod_url(@mod)
    assert_response :success
  end

  test "should get edit" do
    get edit_mod_url(@mod)
    assert_response :success
  end

  test "should update mod" do
    patch mod_url(@mod), params: { mod: { category_mod_id: @mod.category_mod_id, description: @mod.description, icon: @mod.icon, name: @mod.name, slug: @mod.slug, title: @mod.title } }
    assert_redirected_to mod_url(@mod)
  end

  test "should destroy mod" do
    assert_difference('Mod.count', -1) do
      delete mod_url(@mod)
    end

    assert_redirected_to mods_url
  end
end
