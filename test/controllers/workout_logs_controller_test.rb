require "test_helper"
require "rspec/rails"

RSpec.describe WorkoutLogsController do
  let(:workout_log) { workout_logs(:one) }

  it "should get index" do
    get workout_logs_url
    must_respond_with :success
  end

  it "should get new" do
    get new_workout_log_url
    must_respond_with :success
  end

  it "should create workout_log" do
    assert_difference("WorkoutLog.count") do
      post workout_logs_url, params: { workout_log: { day: @workout_log.day, description: @workout_log.description, minutes: @workout_log.minutes, name: @workout_log.name } }
    end

    must_redirect_to workout_log_url(WorkoutLog.last)
  end

  it "should show workout_log" do
    get workout_log_url(@workout_log)
    must_respond_with :success
  end

  it "should get edit" do
    get edit_workout_log_url(@workout_log)
    must_respond_with :success
  end

  it "should update workout_log" do
    patch workout_log_url(@workout_log), params: { workout_log: { day: @workout_log.day, description: @workout_log.description, minutes: @workout_log.minutes, name: @workout_log.name } }
    must_redirect_to workout_log_url(workout_log)
  end

  it "should destroy workout_log" do
    assert_difference("WorkoutLog.count", -1) do
      delete workout_log_url(@workout_log)
    end

    must_redirect_to workout_logs_url
  end
end
