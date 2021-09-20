# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GenerateSkillLevel do
  let!(:skills_level1) { create(:skills_level) }
  let!(:skills_level2) { create(:skills_level) }

  it 'returns a list of possible skill_levels with associated colors' do
    options = GenerateSkillLevel.options
    expect(options).to eq(
      [
        {
          id: skills_level1.id,
          description: skills_level1.description,
          color: skills_level1.color,
          display: skills_level1.display
        },

        {
          id: skills_level2.id,
          description: skills_level2.description,
          color: skills_level2.color,
          display: skills_level2.display
        }
      ]
    )
  end
end
