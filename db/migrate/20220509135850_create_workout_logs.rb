class CreateWorkoutLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_logs do |t|
      t.string :name
      t.string :day
      t.integer :minutes
      t.text :description

      t.timestamps
    end
  end
end
