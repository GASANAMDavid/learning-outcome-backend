# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Theme, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:link) }
end
