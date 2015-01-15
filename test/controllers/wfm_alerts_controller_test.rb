require 'test_helper'

class WfmAlertsControllerTest < ActionController::TestCase
  setup do
    @wfm_alert = wfm_alerts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wfm_alerts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wfm_alert" do
    assert_difference('WfmAlert.count') do
      post :create, wfm_alert: { from: @wfm_alert.from, pool_id: @wfm_alert.pool_id, subject: @wfm_alert.subject }
    end

    assert_redirected_to wfm_alert_path(assigns(:wfm_alert))
  end

  test "should show wfm_alert" do
    get :show, id: @wfm_alert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wfm_alert
    assert_response :success
  end

  test "should update wfm_alert" do
    patch :update, id: @wfm_alert, wfm_alert: { from: @wfm_alert.from, pool_id: @wfm_alert.pool_id, subject: @wfm_alert.subject }
    assert_redirected_to wfm_alert_path(assigns(:wfm_alert))
  end

  test "should destroy wfm_alert" do
    assert_difference('WfmAlert.count', -1) do
      delete :destroy, id: @wfm_alert
    end

    assert_redirected_to wfm_alerts_path
  end
end
