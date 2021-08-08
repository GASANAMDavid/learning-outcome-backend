class SkillsLevel < ApplicationRecord
  has_many :skills, dependent: :destroy
end
