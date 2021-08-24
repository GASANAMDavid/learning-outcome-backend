# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SkillsLevel, type: :model do
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:color) }
end
