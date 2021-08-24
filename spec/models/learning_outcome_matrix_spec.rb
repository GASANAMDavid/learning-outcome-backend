# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LearningOutcomeMatrix, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:skills_level) }
  it { should belong_to(:skill) }
end
