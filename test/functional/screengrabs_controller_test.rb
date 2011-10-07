require 'test_helper'

class ScreengrabsControllerTest < ActionController::TestCase
  setup do
    @screengrab = screengrabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:screengrabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create screengrab" do
    assert_difference('Screengrab.count') do
      post :create, screengrab: @screengrab.attributes
    end

    assert_redirected_to screengrab_path(assigns(:screengrab))
  end

  test "should show screengrab" do
    get :show, id: @screengrab.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @screengrab.to_param
    assert_response :success
  end

  test "should update screengrab" do
    put :update, id: @screengrab.to_param, screengrab: @screengrab.attributes
    assert_redirected_to screengrab_path(assigns(:screengrab))
  end

  test "should destroy screengrab" do
    assert_difference('Screengrab.count', -1) do
      delete :destroy, id: @screengrab.to_param
    end

    assert_redirected_to screengrabs_path
  end
end
