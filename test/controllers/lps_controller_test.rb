require 'test_helper'

class LpsControllerTest < ActionController::TestCase
  setup do
    @lp = lps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lp" do
    assert_difference('Lp.count') do
      post :create, lp: { description: @lp.description, name: @lp.name }
    end

    assert_redirected_to lp_path(assigns(:lp))
  end

  test "should show lp" do
    get :show, id: @lp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lp
    assert_response :success
  end

  test "should update lp" do
    patch :update, id: @lp, lp: { description: @lp.description, name: @lp.name }
    assert_redirected_to lp_path(assigns(:lp))
  end

  test "should destroy lp" do
    assert_difference('Lp.count', -1) do
      delete :destroy, id: @lp
    end

    assert_redirected_to lps_path
  end
end
