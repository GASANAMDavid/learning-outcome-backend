# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LearningOutcome, type: :model do
  it { should belong_to(:learning_outcomes_matrix) }
  it { should belong_to(:skills_level) }
  it { should belong_to(:skill) }
end
