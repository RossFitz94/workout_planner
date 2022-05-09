require "application_system_test_case"
require 'rspec/rails'

describe "WorkoutLogs", :system do
  let(:workout_log) { workout_logs(:one) }

  it "visiting the index" do
    visit workout_logs_url
    assert_selector "h1", text: "Workout Logs"
  end

  it "creating a Workout log" do
    visit workout_logs_url
    click_on "New Workout Log"

    fill_in "Day", with: @workout_log.day
    fill_in "Description", with: @workout_log.description
    fill_in "Minutes", with: @workout_log.minutes
    fill_in "Name", with: @workout_log.name
    click_on "Create Workout log"

    assert_text "Workout log was successfully created"
    click_on "Back"
  end

  it "updating a Workout log" do
    visit workout_logs_url
    click_on "Edit", match: :first

    fill_in "Day", with: @workout_log.day
    fill_in "Description", with: @workout_log.description
    fill_in "Minutes", with: @workout_log.minutes
    fill_in "Name", with: @workout_log.name
    click_on "Update Workout log"

    assert_text "Workout log was successfully updated"
    click_on "Back"
  end

  it "destroying a Workout log" do
    visit workout_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workout log was successfully destroyed"
  end
end
