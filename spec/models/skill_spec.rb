# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Skill, type: :model do
  it { should validate_presence_of(:title) }
  it { should belong_to(:theme) }
  it { should belong_to(:apprenticeship_level) }
end
