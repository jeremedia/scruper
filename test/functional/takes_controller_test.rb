require 'test_helper'

class TakesControllerTest < ActionController::TestCase
  setup do
    @take = takes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:takes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create take" do
    assert_difference('Take.count') do
      post :create, take: @take.attributes
    end

    assert_redirected_to take_path(assigns(:take))
  end

  test "should show take" do
    get :show, id: @take.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @take.to_param
    assert_response :success
  end

  test "should update take" do
    put :update, id: @take.to_param, take: @take.attributes
    assert_redirected_to take_path(assigns(:take))
  end

  test "should destroy take" do
    assert_difference('Take.count', -1) do
      delete :destroy, id: @take.to_param
    end

    assert_redirected_to takes_path
  end
end
