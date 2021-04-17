require "test_helper"

class ScheduleHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_history = schedule_histories(:one)
  end

  test "should get index" do
    get schedule_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_schedule_history_url
    assert_response :success
  end

  test "should create schedule_history" do
    assert_difference('ScheduleHistory.count') do
      post schedule_histories_url, params: { schedule_history: { end_at: @schedule_history.end_at, start_at: @schedule_history.start_at, task_name: @schedule_history.task_name } }
    end

    assert_redirected_to schedule_history_url(ScheduleHistory.last)
  end

  test "should show schedule_history" do
    get schedule_history_url(@schedule_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedule_history_url(@schedule_history)
    assert_response :success
  end

  test "should update schedule_history" do
    patch schedule_history_url(@schedule_history), params: { schedule_history: { end_at: @schedule_history.end_at, start_at: @schedule_history.start_at, task_name: @schedule_history.task_name } }
    assert_redirected_to schedule_history_url(@schedule_history)
  end

  test "should destroy schedule_history" do
    assert_difference('ScheduleHistory.count', -1) do
      delete schedule_history_url(@schedule_history)
    end

    assert_redirected_to schedule_histories_url
  end
end
