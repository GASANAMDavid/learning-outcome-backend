require 'rails_helper'

RSpec.describe LearningOutcomesMatrix, type: :model do
  it { should have_many(:learning_outcomes) }
end
