task initial_users_matrix: :environment do
  puts 'Initializing the learning outcome matrix for a new user.............'
  Skill.order(:id).all.each do |skill|
    LearningOutcomeMatrix.create!(skill_id: skill.id, skills_level_id: 1, user_id: 1)
  end
  puts 'Finished setting initial users skills'
end
