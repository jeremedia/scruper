require 'test_helper'

class StoryboardsControllerTest < ActionController::TestCase
  setup do
    @storyboard = storyboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storyboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storyboard" do
    assert_difference('Storyboard.count') do
      post :create, storyboard: @storyboard.attributes
    end

    assert_redirected_to storyboard_path(assigns(:storyboard))
  end

  test "should show storyboard" do
    get :show, id: @storyboard.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storyboard.to_param
    assert_response :success
  end

  test "should update storyboard" do
    put :update, id: @storyboard.to_param, storyboard: @storyboard.attributes
    assert_redirected_to storyboard_path(assigns(:storyboard))
  end

  test "should destroy storyboard" do
    assert_difference('Storyboard.count', -1) do
      delete :destroy, id: @storyboard.to_param
    end

    assert_redirected_to storyboards_path
  end
end
