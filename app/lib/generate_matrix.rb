# frozen_string_literal: true

class GenerateMatrix
  def self.data(matrices)
    matrices.map do |matrix|
      {
        id: matrix.id,
        learning_outcome: matrix.skill.title,
        skills_level: matrix.skills_level.id,
        theme: { title: matrix.skill.theme.title, link: matrix.skill.theme.link },
        apprenticeship_level: matrix.skill.apprenticeship_level.id
      }
    end
  end
end
