require 'test_helper'

class SweetsControllerTest < ActionController::TestCase
  setup do
    @sweet = sweets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sweets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sweet" do
    assert_difference('Sweet.count') do
      post :create, :sweet => @sweet.attributes
    end

    assert_redirected_to sweet_path(assigns(:sweet))
  end

  test "should show sweet" do
    get :show, :id => @sweet.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sweet.to_param
    assert_response :success
  end

  test "should update sweet" do
    put :update, :id => @sweet.to_param, :sweet => @sweet.attributes
    assert_redirected_to sweet_path(assigns(:sweet))
  end

  test "should destroy sweet" do
    assert_difference('Sweet.count', -1) do
      delete :destroy, :id => @sweet.to_param
    end

    assert_redirected_to sweets_path
  end
end
