require 'test_helper'

class InternalpanelsControllerTest < ActionController::TestCase
  setup do
    @internalpanel = internalpanels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:internalpanels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create internalpanel" do
    assert_difference('Internalpanel.count') do
      post :create, :internalpanel => @internalpanel.attributes
    end

    assert_redirected_to internalpanel_path(assigns(:internalpanel))
  end

  test "should show internalpanel" do
    get :show, :id => @internalpanel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @internalpanel.to_param
    assert_response :success
  end

  test "should update internalpanel" do
    put :update, :id => @internalpanel.to_param, :internalpanel => @internalpanel.attributes
    assert_redirected_to internalpanel_path(assigns(:internalpanel))
  end

  test "should destroy internalpanel" do
    assert_difference('Internalpanel.count', -1) do
      delete :destroy, :id => @internalpanel.to_param
    end

    assert_redirected_to internalpanels_path
  end
end
