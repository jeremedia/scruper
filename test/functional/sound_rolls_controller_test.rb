require 'test_helper'

class SoundRollsControllerTest < ActionController::TestCase
  setup do
    @sound_roll = sound_rolls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sound_rolls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sound_roll" do
    assert_difference('SoundRoll.count') do
      post :create, sound_roll: @sound_roll.attributes
    end

    assert_redirected_to sound_roll_path(assigns(:sound_roll))
  end

  test "should show sound_roll" do
    get :show, id: @sound_roll.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sound_roll.to_param
    assert_response :success
  end

  test "should update sound_roll" do
    put :update, id: @sound_roll.to_param, sound_roll: @sound_roll.attributes
    assert_redirected_to sound_roll_path(assigns(:sound_roll))
  end

  test "should destroy sound_roll" do
    assert_difference('SoundRoll.count', -1) do
      delete :destroy, id: @sound_roll.to_param
    end

    assert_redirected_to sound_rolls_path
  end
end
