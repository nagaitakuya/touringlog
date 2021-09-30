require "application_system_test_case"

class TouringLogsTest < ApplicationSystemTestCase
  setup do
    @touring_log = touring_logs(:one)
  end

  test "visiting the index" do
    visit touring_logs_url
    assert_selector "h1", text: "Touring Logs"
  end

  test "creating a Touring log" do
    visit touring_logs_url
    click_on "New Touring Log"

    click_on "Create Touring log"

    assert_text "Touring log was successfully created"
    click_on "Back"
  end

  test "updating a Touring log" do
    visit touring_logs_url
    click_on "Edit", match: :first

    click_on "Update Touring log"

    assert_text "Touring log was successfully updated"
    click_on "Back"
  end

  test "destroying a Touring log" do
    visit touring_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Touring log was successfully destroyed"
  end
end
