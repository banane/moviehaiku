require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movies" do
    assert_difference('Movies.count') do
      post :create, :movies => { }
    end

    assert_redirected_to movies_path(assigns(:movies))
  end

  test "should show movies" do
    get :show, :id => movies(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => movies(:one).to_param
    assert_response :success
  end

  test "should update movies" do
    put :update, :id => movies(:one).to_param, :movies => { }
    assert_redirected_to movies_path(assigns(:movies))
  end

  test "should destroy movies" do
    assert_difference('Movies.count', -1) do
      delete :destroy, :id => movies(:one).to_param
    end

    assert_redirected_to movies_path
  end
end
