require 'test_helper'

class PoetsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poet" do
    assert_difference('Poet.count') do
      post :create, :poet => { }
    end

    assert_redirected_to poet_path(assigns(:poet))
  end

  test "should show poet" do
    get :show, :id => poets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => poets(:one).to_param
    assert_response :success
  end

  test "should update poet" do
    put :update, :id => poets(:one).to_param, :poet => { }
    assert_redirected_to poet_path(assigns(:poet))
  end

  test "should destroy poet" do
    assert_difference('Poet.count', -1) do
      delete :destroy, :id => poets(:one).to_param
    end

    assert_redirected_to poets_path
  end
end
