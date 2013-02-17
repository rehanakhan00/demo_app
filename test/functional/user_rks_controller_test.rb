require 'test_helper'

class UserRksControllerTest < ActionController::TestCase
  setup do
    @user_rk = user_rks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_rks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_rk" do
    assert_difference('UserRk.count') do
      post :create, user_rk: { email: @user_rk.email, name: @user_rk.name }
    end

    assert_redirected_to user_rk_path(assigns(:user_rk))
  end

  test "should show user_rk" do
    get :show, id: @user_rk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_rk
    assert_response :success
  end

  test "should update user_rk" do
    put :update, id: @user_rk, user_rk: { email: @user_rk.email, name: @user_rk.name }
    assert_redirected_to user_rk_path(assigns(:user_rk))
  end

  test "should destroy user_rk" do
    assert_difference('UserRk.count', -1) do
      delete :destroy, id: @user_rk
    end

    assert_redirected_to user_rks_path
  end
end
