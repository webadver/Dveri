require 'test_helper'

class DopoptionsControllerTest < ActionController::TestCase
  setup do
    @dopoption = dopoptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dopoptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dopoption" do
    assert_difference('Dopoption.count') do
      post :create, :dopoption => @dopoption.attributes
    end

    assert_redirected_to dopoption_path(assigns(:dopoption))
  end

  test "should show dopoption" do
    get :show, :id => @dopoption.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dopoption.to_param
    assert_response :success
  end

  test "should update dopoption" do
    put :update, :id => @dopoption.to_param, :dopoption => @dopoption.attributes
    assert_redirected_to dopoption_path(assigns(:dopoption))
  end

  test "should destroy dopoption" do
    assert_difference('Dopoption.count', -1) do
      delete :destroy, :id => @dopoption.to_param
    end

    assert_redirected_to dopoptions_path
  end
end
