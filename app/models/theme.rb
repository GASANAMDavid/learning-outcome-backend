class Theme < ApplicationRecord
    has_many :skills, dependent: :destroy
end
