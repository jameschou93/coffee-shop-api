class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :business
  validates :coffee_score, inclusion: { in: 1..10 }
  validates :satisfaction_score, inclusion: { in: 1..10 }
  validates :noise_level, inclusion: { in: 1..10 }
end
