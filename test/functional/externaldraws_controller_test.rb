require 'test_helper'

class ExternaldrawsControllerTest < ActionController::TestCase
  setup do
    @externaldraw = externaldraws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:externaldraws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create externaldraw" do
    assert_difference('Externaldraw.count') do
      post :create, :externaldraw => @externaldraw.attributes
    end

    assert_redirected_to externaldraw_path(assigns(:externaldraw))
  end

  test "should show externaldraw" do
    get :show, :id => @externaldraw.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @externaldraw.to_param
    assert_response :success
  end

  test "should update externaldraw" do
    put :update, :id => @externaldraw.to_param, :externaldraw => @externaldraw.attributes
    assert_redirected_to externaldraw_path(assigns(:externaldraw))
  end

  test "should destroy externaldraw" do
    assert_difference('Externaldraw.count', -1) do
      delete :destroy, :id => @externaldraw.to_param
    end

    assert_redirected_to externaldraws_path
  end
end
