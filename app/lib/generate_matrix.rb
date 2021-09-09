# frozen_string_literal: true

class GenerateMatrix
  def self.data(matrix)
    matrix.map do |learning_outcome|
      {
        id: learning_outcome.id,
        learning_outcome: learning_outcome.skill.title,
        skills_level: learning_outcome.skills_level.id,
        theme: { title: learning_outcome.skill.theme.title, link: learning_outcome.skill.theme.link },
        apprenticeship_level: learning_outcome.skill.apprenticeship_level.id
      }
    end
  end
end
