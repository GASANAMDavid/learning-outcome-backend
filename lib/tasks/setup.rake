# frozen_string_literal: true

load 'lib/deploy/seed'

desc 'seed the tables and sets initial users learning outcome matrix'
task setup: [:environment, 'db:seed'] do
  Rake::Task['initialize_users_matrix'].invoke if Rails.env.development?
end

task initialize_users_matrix: :environment do
  puts 'Initializing the learning outcomes for a new user.............'
  Skill.order(:id).all.each do |skill|
    LearningOutcome.create!(skill_id: skill.id, skills_level_id: 1, learning_outcomes_matrix_id: 1)
  end
  puts 'Finished setting initial users skills'
end
