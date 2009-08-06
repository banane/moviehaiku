require 'test_helper'

class HaikusControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haikus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haiku" do
    assert_difference('Haiku.count') do
      post :create, :haiku => { }
    end

    assert_redirected_to haiku_path(assigns(:haiku))
  end

  test "should show haiku" do
    get :show, :id => haikus(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => haikus(:one).to_param
    assert_response :success
  end

  test "should update haiku" do
    put :update, :id => haikus(:one).to_param, :haiku => { }
    assert_redirected_to haiku_path(assigns(:haiku))
  end

  test "should destroy haiku" do
    assert_difference('Haiku.count', -1) do
      delete :destroy, :id => haikus(:one).to_param
    end

    assert_redirected_to haikus_path
  end
end
