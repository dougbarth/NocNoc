require 'test_helper'

class PanelGroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panel_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panel_group" do
    assert_difference('PanelGroup.count') do
      post :create, :panel_group => { }
    end

    assert_redirected_to panel_group_path(assigns(:panel_group))
  end

  test "should show panel_group" do
    get :show, :id => panel_groups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => panel_groups(:one).to_param
    assert_response :success
  end

  test "should update panel_group" do
    put :update, :id => panel_groups(:one).to_param, :panel_group => { }
    assert_redirected_to panel_group_path(assigns(:panel_group))
  end

  test "should destroy panel_group" do
    assert_difference('PanelGroup.count', -1) do
      delete :destroy, :id => panel_groups(:one).to_param
    end

    assert_redirected_to panel_groups_path
  end
end
