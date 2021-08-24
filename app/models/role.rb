# frozen_string_literal: true

class Role < ApplicationRecord
  validates :name, :description, presence: true
end
