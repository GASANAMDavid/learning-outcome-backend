# frozen_string_literal: true

class GenerateMatrix
  def self.info(matrices)
    matrices.map do |matrix|
      {
        id: matrix.id,
        learning_outcome: matrix.skill.title,
        skills_level: matrix.skills_level.id,
        theme: matrix.skill.theme.title,
        apprenticeship_level: matrix.skill.apprenticeship_level.id
      }
    end
  end
end
