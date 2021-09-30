require 'test_helper'

class TouringLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @touring_log = touring_logs(:one)
  end

  test "should get index" do
    get touring_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_touring_log_url
    assert_response :success
  end

  test "should create touring_log" do
    assert_difference('TouringLog.count') do
      post touring_logs_url, params: { touring_log: {  } }
    end

    assert_redirected_to touring_log_url(TouringLog.last)
  end

  test "should show touring_log" do
    get touring_log_url(@touring_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_touring_log_url(@touring_log)
    assert_response :success
  end

  test "should update touring_log" do
    patch touring_log_url(@touring_log), params: { touring_log: {  } }
    assert_redirected_to touring_log_url(@touring_log)
  end

  test "should destroy touring_log" do
    assert_difference('TouringLog.count', -1) do
      delete touring_log_url(@touring_log)
    end

    assert_redirected_to touring_logs_url
  end
end
