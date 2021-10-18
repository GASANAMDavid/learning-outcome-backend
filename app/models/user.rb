# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :role

  has_many :learning_outcomes_matrices, dependent: :destroy

  validates :first_name, :last_name, :email, presence: true

  def admin?
    role = Role.find(role_id)
    role.name == 'admin'
  end
end
