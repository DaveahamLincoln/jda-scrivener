require 'test_helper'

class FloodsControllerTest < ActionController::TestCase
  setup do
    @flood = floods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flood" do
    assert_difference('Flood.count') do
      post :create, flood: { name: @flood.name }
    end

    assert_redirected_to flood_path(assigns(:flood))
  end

  test "should show flood" do
    get :show, id: @flood
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flood
    assert_response :success
  end

  test "should update flood" do
    patch :update, id: @flood, flood: { name: @flood.name }
    assert_redirected_to flood_path(assigns(:flood))
  end

  test "should destroy flood" do
    assert_difference('Flood.count', -1) do
      delete :destroy, id: @flood
    end

    assert_redirected_to floods_path
  end
end
