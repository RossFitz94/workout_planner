class LogWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :name, null: false
      t.string :day, null: false
      t.integer :minutes, null: false
      t.text :description, null: false
      t.belongs_to :user, null: false, foreign_key: true
      t.timestamp null: false
    end

    add_index: workouts, [:user_id, :name]
  end
end
