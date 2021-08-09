class ApprenticeshipLevel < ApplicationRecord
  has_many :skills, dependent: :destroy
end
