require 'test_helper'

class CameraRollsControllerTest < ActionController::TestCase
  setup do
    @camera_roll = camera_rolls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:camera_rolls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create camera_roll" do
    assert_difference('CameraRoll.count') do
      post :create, camera_roll: @camera_roll.attributes
    end

    assert_redirected_to camera_roll_path(assigns(:camera_roll))
  end

  test "should show camera_roll" do
    get :show, id: @camera_roll.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @camera_roll.to_param
    assert_response :success
  end

  test "should update camera_roll" do
    put :update, id: @camera_roll.to_param, camera_roll: @camera_roll.attributes
    assert_redirected_to camera_roll_path(assigns(:camera_roll))
  end

  test "should destroy camera_roll" do
    assert_difference('CameraRoll.count', -1) do
      delete :destroy, id: @camera_roll.to_param
    end

    assert_redirected_to camera_rolls_path
  end
end
