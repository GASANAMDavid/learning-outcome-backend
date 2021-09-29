require 'rails_helper'

RSpec.describe MatrixInitialization do
  let(:theme) { create(:theme) }
  let(:apprenticeship_level) { create(:apprenticeship_level) }
  let!(:skill) { create(:skill, theme: theme, apprenticeship_level: apprenticeship_level) }
  let!(:skill2) { create(:skill, theme: theme, apprenticeship_level: apprenticeship_level) }
  let!(:skills_level) { create(:skills_level) }
  let(:role) { create(:role) }
  let(:user) { create(:user, role: role) }

  it 'initializes user with a matrix' do
    expect { described_class.call(user) }.to change { LearningOutcomesMatrix.count }.by(1)
  end

  it 'adds learning_outcomes to the new created matrix' do
    expect { described_class.call(user) }.to change { LearningOutcome.count }.by(2)
  end
end
