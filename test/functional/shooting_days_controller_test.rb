require 'test_helper'

class ShootingDaysControllerTest < ActionController::TestCase
  setup do
    @shooting_day = shooting_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shooting_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shooting_day" do
    assert_difference('ShootingDay.count') do
      post :create, shooting_day: @shooting_day.attributes
    end

    assert_redirected_to shooting_day_path(assigns(:shooting_day))
  end

  test "should show shooting_day" do
    get :show, id: @shooting_day.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shooting_day.to_param
    assert_response :success
  end

  test "should update shooting_day" do
    put :update, id: @shooting_day.to_param, shooting_day: @shooting_day.attributes
    assert_redirected_to shooting_day_path(assigns(:shooting_day))
  end

  test "should destroy shooting_day" do
    assert_difference('ShootingDay.count', -1) do
      delete :destroy, id: @shooting_day.to_param
    end

    assert_redirected_to shooting_days_path
  end
end
