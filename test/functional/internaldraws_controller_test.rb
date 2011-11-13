require 'test_helper'

class InternaldrawsControllerTest < ActionController::TestCase
  setup do
    @internaldraw = internaldraws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:internaldraws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create internaldraw" do
    assert_difference('Internaldraw.count') do
      post :create, :internaldraw => @internaldraw.attributes
    end

    assert_redirected_to internaldraw_path(assigns(:internaldraw))
  end

  test "should show internaldraw" do
    get :show, :id => @internaldraw.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @internaldraw.to_param
    assert_response :success
  end

  test "should update internaldraw" do
    put :update, :id => @internaldraw.to_param, :internaldraw => @internaldraw.attributes
    assert_redirected_to internaldraw_path(assigns(:internaldraw))
  end

  test "should destroy internaldraw" do
    assert_difference('Internaldraw.count', -1) do
      delete :destroy, :id => @internaldraw.to_param
    end

    assert_redirected_to internaldraws_path
  end
end
