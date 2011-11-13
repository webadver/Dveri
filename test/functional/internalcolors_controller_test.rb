require 'test_helper'

class InternalcolorsControllerTest < ActionController::TestCase
  setup do
    @internalcolor = internalcolors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:internalcolors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create internalcolor" do
    assert_difference('Internalcolor.count') do
      post :create, :internalcolor => @internalcolor.attributes
    end

    assert_redirected_to internalcolor_path(assigns(:internalcolor))
  end

  test "should show internalcolor" do
    get :show, :id => @internalcolor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @internalcolor.to_param
    assert_response :success
  end

  test "should update internalcolor" do
    put :update, :id => @internalcolor.to_param, :internalcolor => @internalcolor.attributes
    assert_redirected_to internalcolor_path(assigns(:internalcolor))
  end

  test "should destroy internalcolor" do
    assert_difference('Internalcolor.count', -1) do
      delete :destroy, :id => @internalcolor.to_param
    end

    assert_redirected_to internalcolors_path
  end
end
