require 'test_helper'

class DoplocksControllerTest < ActionController::TestCase
  setup do
    @doplock = doplocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doplocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doplock" do
    assert_difference('Doplock.count') do
      post :create, :doplock => @doplock.attributes
    end

    assert_redirected_to doplock_path(assigns(:doplock))
  end

  test "should show doplock" do
    get :show, :id => @doplock.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @doplock.to_param
    assert_response :success
  end

  test "should update doplock" do
    put :update, :id => @doplock.to_param, :doplock => @doplock.attributes
    assert_redirected_to doplock_path(assigns(:doplock))
  end

  test "should destroy doplock" do
    assert_difference('Doplock.count', -1) do
      delete :destroy, :id => @doplock.to_param
    end

    assert_redirected_to doplocks_path
  end
end
