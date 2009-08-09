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

  test "should create poets" do
    assert_difference('Poets.count') do
      post :create, :poets => { }
    end

    assert_redirected_to poets_path(assigns(:poets))
  end

  test "should show poets" do
    get :show, :id => poets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => poets(:one).to_param
    assert_response :success
  end

  test "should update poets" do
    put :update, :id => poets(:one).to_param, :poets => { }
    assert_redirected_to poets_path(assigns(:poets))
  end

  test "should destroy poets" do
    assert_difference('Poets.count', -1) do
      delete :destroy, :id => poets(:one).to_param
    end

    assert_redirected_to poets_path
  end
end
