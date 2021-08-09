class Skill < ApplicationRecord
  belongs_to :apprenticeship_level
  belongs_to :theme
end
