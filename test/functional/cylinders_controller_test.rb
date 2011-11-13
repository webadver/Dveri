require 'test_helper'

class CylindersControllerTest < ActionController::TestCase
  setup do
    @cylinder = cylinders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cylinders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cylinder" do
    assert_difference('Cylinder.count') do
      post :create, :cylinder => @cylinder.attributes
    end

    assert_redirected_to cylinder_path(assigns(:cylinder))
  end

  test "should show cylinder" do
    get :show, :id => @cylinder.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cylinder.to_param
    assert_response :success
  end

  test "should update cylinder" do
    put :update, :id => @cylinder.to_param, :cylinder => @cylinder.attributes
    assert_redirected_to cylinder_path(assigns(:cylinder))
  end

  test "should destroy cylinder" do
    assert_difference('Cylinder.count', -1) do
      delete :destroy, :id => @cylinder.to_param
    end

    assert_redirected_to cylinders_path
  end
end
