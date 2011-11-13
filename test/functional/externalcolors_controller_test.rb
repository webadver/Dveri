require 'test_helper'

class ExternalcolorsControllerTest < ActionController::TestCase
  setup do
    @externalcolor = externalcolors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:externalcolors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create externalcolor" do
    assert_difference('Externalcolor.count') do
      post :create, :externalcolor => @externalcolor.attributes
    end

    assert_redirected_to externalcolor_path(assigns(:externalcolor))
  end

  test "should show externalcolor" do
    get :show, :id => @externalcolor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @externalcolor.to_param
    assert_response :success
  end

  test "should update externalcolor" do
    put :update, :id => @externalcolor.to_param, :externalcolor => @externalcolor.attributes
    assert_redirected_to externalcolor_path(assigns(:externalcolor))
  end

  test "should destroy externalcolor" do
    assert_difference('Externalcolor.count', -1) do
      delete :destroy, :id => @externalcolor.to_param
    end

    assert_redirected_to externalcolors_path
  end
end
