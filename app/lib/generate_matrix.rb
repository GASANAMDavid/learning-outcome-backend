# frozen_string_literal: true

class GenerateMatrix
  def self.data(matrix)
    matrix.map do |skill_record|
      {
        id: skill_record.id,
        learning_outcome: skill_record.skill.title,
        skills_level: skill_record.skills_level.id,
        theme: { title: skill_record.skill.theme.title, link: skill_record.skill.theme.link },
        apprenticeship_level: skill_record.skill.apprenticeship_level.id
      }
    end
  end
end
