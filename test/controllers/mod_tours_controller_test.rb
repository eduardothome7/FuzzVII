require 'test_helper'

class ModToursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mod_tour = mod_tours(:one)
  end

  test "should get index" do
    get mod_tours_url
    assert_response :success
  end

  test "should get new" do
    get new_mod_tour_url
    assert_response :success
  end

  test "should create mod_tour" do
    assert_difference('ModTour.count') do
      post mod_tours_url, params: { mod_tour: { a_link: @mod_tour.a_link, background-color: @mod_tour.background-color, description: @mod_tour.description, mod_id: @mod_tour.mod_id, picture: @mod_tour.picture, title: @mod_tour.title } }
    end

    assert_redirected_to mod_tour_url(ModTour.last)
  end

  test "should show mod_tour" do
    get mod_tour_url(@mod_tour)
    assert_response :success
  end

  test "should get edit" do
    get edit_mod_tour_url(@mod_tour)
    assert_response :success
  end

  test "should update mod_tour" do
    patch mod_tour_url(@mod_tour), params: { mod_tour: { a_link: @mod_tour.a_link, background-color: @mod_tour.background-color, description: @mod_tour.description, mod_id: @mod_tour.mod_id, picture: @mod_tour.picture, title: @mod_tour.title } }
    assert_redirected_to mod_tour_url(@mod_tour)
  end

  test "should destroy mod_tour" do
    assert_difference('ModTour.count', -1) do
      delete mod_tour_url(@mod_tour)
    end

    assert_redirected_to mod_tours_url
  end
end
