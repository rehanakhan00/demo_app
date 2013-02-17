require 'test_helper'

class MyusersControllerTest < ActionController::TestCase
  setup do
    @myuser = myusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myuser" do
    assert_difference('Myuser.count') do
      post :create, myuser: { first_name: @myuser.first_name, user_email: @myuser.user_email }
    end

    assert_redirected_to myuser_path(assigns(:myuser))
  end

  test "should show myuser" do
    get :show, id: @myuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myuser
    assert_response :success
  end

  test "should update myuser" do
    put :update, id: @myuser, myuser: { first_name: @myuser.first_name, user_email: @myuser.user_email }
    assert_redirected_to myuser_path(assigns(:myuser))
  end

  test "should destroy myuser" do
    assert_difference('Myuser.count', -1) do
      delete :destroy, id: @myuser
    end

    assert_redirected_to myusers_path
  end
end
