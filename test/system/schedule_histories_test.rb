require "application_system_test_case"

class ScheduleHistoriesTest < ApplicationSystemTestCase
  setup do
    @schedule_history = schedule_histories(:one)
  end

  test "visiting the index" do
    visit schedule_histories_url
    assert_selector "h1", text: "Schedule Histories"
  end

  test "creating a Schedule history" do
    visit schedule_histories_url
    click_on "New Schedule History"

    fill_in "End at", with: @schedule_history.end_at
    fill_in "Start at", with: @schedule_history.start_at
    fill_in "Task name", with: @schedule_history.task_name
    click_on "Create Schedule history"

    assert_text "Schedule history was successfully created"
    click_on "Back"
  end

  test "updating a Schedule history" do
    visit schedule_histories_url
    click_on "Edit", match: :first

    fill_in "End at", with: @schedule_history.end_at
    fill_in "Start at", with: @schedule_history.start_at
    fill_in "Task name", with: @schedule_history.task_name
    click_on "Update Schedule history"

    assert_text "Schedule history was successfully updated"
    click_on "Back"
  end

  test "destroying a Schedule history" do
    visit schedule_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Schedule history was successfully destroyed"
  end
end
