# frozen_string_literal: true

class GenerateSkillLevel
  def self.options
    SkillsLevel.all.map do |level|
      {
        id: level.id,
        description: level.description,
        color: level.color,
        display: level.display
      }
    end
  end
end
