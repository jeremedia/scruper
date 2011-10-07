require 'test_helper'

class StoryboardCellsControllerTest < ActionController::TestCase
  setup do
    @storyboard_cell = storyboard_cells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storyboard_cells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storyboard_cell" do
    assert_difference('StoryboardCell.count') do
      post :create, storyboard_cell: @storyboard_cell.attributes
    end

    assert_redirected_to storyboard_cell_path(assigns(:storyboard_cell))
  end

  test "should show storyboard_cell" do
    get :show, id: @storyboard_cell.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storyboard_cell.to_param
    assert_response :success
  end

  test "should update storyboard_cell" do
    put :update, id: @storyboard_cell.to_param, storyboard_cell: @storyboard_cell.attributes
    assert_redirected_to storyboard_cell_path(assigns(:storyboard_cell))
  end

  test "should destroy storyboard_cell" do
    assert_difference('StoryboardCell.count', -1) do
      delete :destroy, id: @storyboard_cell.to_param
    end

    assert_redirected_to storyboard_cells_path
  end
end
