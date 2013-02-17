require 'test_helper'

class UserRk1sControllerTest < ActionController::TestCase
  setup do
    @user_rk1 = user_rk1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_rk1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_rk1" do
    assert_difference('UserRk1.count') do
      post :create, user_rk1: { email: @user_rk1.email, rk_: @user_rk1.rk_, rk_name: @user_rk1.rk_name }
    end

    assert_redirected_to user_rk1_path(assigns(:user_rk1))
  end

  test "should show user_rk1" do
    get :show, id: @user_rk1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_rk1
    assert_response :success
  end

  test "should update user_rk1" do
    put :update, id: @user_rk1, user_rk1: { email: @user_rk1.email, rk_: @user_rk1.rk_, rk_name: @user_rk1.rk_name }
    assert_redirected_to user_rk1_path(assigns(:user_rk1))
  end

  test "should destroy user_rk1" do
    assert_difference('UserRk1.count', -1) do
      delete :destroy, id: @user_rk1
    end

    assert_redirected_to user_rk1s_path
  end
end
