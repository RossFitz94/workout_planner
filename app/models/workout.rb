class Workout < ApplicationRecord
    belongs_to :user
 
    validates :name, presence: true, uniqueness: { scope: :user_id }
    validates :day, presence: true
    validates :time, presence: true
    validates :user, presence: true
end