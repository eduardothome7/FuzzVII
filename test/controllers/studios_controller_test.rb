require 'test_helper'

class StudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studio = studios(:one)
  end

  test "should get index" do
    get studios_url
    assert_response :success
  end

  test "should get new" do
    get new_studio_url
    assert_response :success
  end

  test "should create studio" do
    assert_difference('Studio.count') do
      post studios_url, params: { studio: { address: @studio.address, cep: @studio.cep, city: @studio.city, description: @studio.description, email: @studio.email, name: @studio.name, picture: @studio.picture, social_name: @studio.social_name, uf: @studio.uf, user_id: @studio.user_id } }
    end

    assert_redirected_to studio_url(Studio.last)
  end

  test "should show studio" do
    get studio_url(@studio)
    assert_response :success
  end

  test "should get edit" do
    get edit_studio_url(@studio)
    assert_response :success
  end

  test "should update studio" do
    patch studio_url(@studio), params: { studio: { address: @studio.address, cep: @studio.cep, city: @studio.city, description: @studio.description, email: @studio.email, name: @studio.name, picture: @studio.picture, social_name: @studio.social_name, uf: @studio.uf, user_id: @studio.user_id } }
    assert_redirected_to studio_url(@studio)
  end

  test "should destroy studio" do
    assert_difference('Studio.count', -1) do
      delete studio_url(@studio)
    end

    assert_redirected_to studios_url
  end
end
