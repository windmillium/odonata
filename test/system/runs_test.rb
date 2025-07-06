require "application_system_test_case"

class RunsTest < ApplicationSystemTestCase
  setup do
    @run = runs(:one)
  end

  test "visiting the index" do
    visit runs_url
    assert_selector "h1", text: "Runs"
  end

  test "should create run" do
    visit runs_url
    click_on "New run"

    fill_in "Duration", with: @run.duration
    fill_in "Ended at", with: @run.ended_at
    fill_in "Notes", with: @run.notes
    fill_in "Stage", with: @run.stage
    fill_in "Started at", with: @run.started_at
    fill_in "Tumbler", with: @run.tumbler_id
    click_on "Create Run"

    assert_text "Run was successfully created"
    click_on "Back"
  end

  test "should update Run" do
    visit run_url(@run)
    click_on "Edit this run", match: :first

    fill_in "Duration", with: @run.duration
    fill_in "Ended at", with: @run.ended_at.to_s
    fill_in "Notes", with: @run.notes
    fill_in "Stage", with: @run.stage
    fill_in "Started at", with: @run.started_at.to_s
    fill_in "Tumbler", with: @run.tumbler_id
    click_on "Update Run"

    assert_text "Run was successfully updated"
    click_on "Back"
  end

  test "should destroy Run" do
    visit run_url(@run)
    accept_confirm { click_on "Destroy this run", match: :first }

    assert_text "Run was successfully destroyed"
  end
end
