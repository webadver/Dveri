require 'test_helper'

class JambsControllerTest < ActionController::TestCase
  setup do
    @jamb = jambs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jambs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jamb" do
    assert_difference('Jamb.count') do
      post :create, :jamb => @jamb.attributes
    end

    assert_redirected_to jamb_path(assigns(:jamb))
  end

  test "should show jamb" do
    get :show, :id => @jamb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @jamb.to_param
    assert_response :success
  end

  test "should update jamb" do
    put :update, :id => @jamb.to_param, :jamb => @jamb.attributes
    assert_redirected_to jamb_path(assigns(:jamb))
  end

  test "should destroy jamb" do
    assert_difference('Jamb.count', -1) do
      delete :destroy, :id => @jamb.to_param
    end

    assert_redirected_to jambs_path
  end
end
