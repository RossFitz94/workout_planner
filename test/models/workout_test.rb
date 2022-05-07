require "test_helper"
require "rspec/rails"

RSpec.describe Workout do
   describe "validity" do
        let(:workout) { Workout.new}

# Is the workout valid?
        before do
            workout.valid?
        end

# The user cannot be blank to have a valid workout
        it "requires a user" do
            workout.errors[:user].must_include "can't be blank"
        end

# The name cannot be blank to have a valid workout
        it "requires a name" do
            workout.errors[:name].must_include "can't be blank"
        end

# The day cannot be blank to have a valid workout
        it "requires a day" do
            workout.errors[:day].must_include "can't be blank"
        end

# The duration cannot be blank to have a valid workout
        it "requires a time" do
            workout.errors[:minutes].must_include "can't be blank"
        end

# The username must not be taken
        it "requires the name to be unique for the same user" do
            existing_workout = create(:workout)
            workout.name = existing_workout.name
            workout.user = existing_workout.user
            workout.valid?

            workout.errors[:name].must_include "Name already exists"
        end

        it "does not require the name to be unique for different users" do
            existing_workout = create(:workout)
            workout.name = existing_workout.name
            workout.valid?

            workout.errors[:name].wont_include "Name already exists" 
        end
    end
end