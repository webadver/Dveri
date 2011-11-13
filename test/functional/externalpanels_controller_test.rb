require 'test_helper'

class ExternalpanelsControllerTest < ActionController::TestCase
  setup do
    @externalpanel = externalpanels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:externalpanels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create externalpanel" do
    assert_difference('Externalpanel.count') do
      post :create, :externalpanel => @externalpanel.attributes
    end

    assert_redirected_to externalpanel_path(assigns(:externalpanel))
  end

  test "should show externalpanel" do
    get :show, :id => @externalpanel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @externalpanel.to_param
    assert_response :success
  end

  test "should update externalpanel" do
    put :update, :id => @externalpanel.to_param, :externalpanel => @externalpanel.attributes
    assert_redirected_to externalpanel_path(assigns(:externalpanel))
  end

  test "should destroy externalpanel" do
    assert_difference('Externalpanel.count', -1) do
      delete :destroy, :id => @externalpanel.to_param
    end

    assert_redirected_to externalpanels_path
  end
end
