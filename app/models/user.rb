# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :role

  validates :first_name, :last_name, :email, presence: true
end
