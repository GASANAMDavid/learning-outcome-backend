# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SkillsLevel.destroy_all

skills_levels = [
  {
    id: '1',
    description: 'I can give a definition or example of this outcome. I feel comfortable utilizing this outcome on a project with little to no guidance.',
    color: 'green'
  },
  {
    id: '2',
    description: 'I can give a definition or example of this outcome. I feel comfortable utilizing this outcome on a project, however I would require guidance.', color: 'yellow'
  },
  {
    id: '3',
    description: 'I have heard of this outcome, however I do not feel comfortable utilizing it on a project.', color: 'orange'
  },
  {

    id: '4',
    description: 'I have never heard of this.',
    color: 'red'
  }
]

themes = [
  {
    id: '1',
    title: 'Automated Testing',
    link: 'https://github.com/oneworldcoders/apprenticeship_syllabus/blob/master/shared_resources/outcomes/01-automated-testing.md'
  },
  {
    id: '2',
    title: 'Refactoring',
    link: 'https://github.com/oneworldcoders/apprenticeship_syllabus/blob/master/shared_resources/outcomes/02-refactoring.md'
  },
  {
    id: '3',
    title: 'Deliver Working Software',
    link: 'https://github.com/oneworldcoders/apprenticeship_syllabus/blob/master/shared_resources/outcomes/03-deliver-working-software.md'
  },
  {
    id: '4',
    title: 'Legacy Code',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/04-legacy-code.md'
  },
  {
    id: '5',
    title: 'Service Oriented Architecture',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/05-service-oriented-architecture.md'
  },
  {
    id: '6',
    title: 'Polyglot Language Paradigms',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/06-polyglot-language-paradigms.md'
  },
  {
    id: '7',
    title: 'Programmer Tooling',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/07-programmer-tooling.md'
  },
  {
    id: '8',
    title: 'Security',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/08-security.md'
  },
  {
    id: '9',
    title: 'Databases',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/09-databases.md'
  },
  {
    id: '10',
    title: 'Technical Reading',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/10-technical-reading.md'
  },
  {
    id: '11',
    title: 'Well-Formed Development Process',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/11-well-formed-development-process.md'
  },
  {
    id: '12',
    title: 'Good Communication',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/12-good-communication.md'
  },
  {
    id: '13',
    title: 'Collective Code Ownership',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/13-collective-code-ownership.md'
  },
  {
    id: '14',
    title: 'Consulting',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/14-consulting.md'
  },
  {
    id: '15',
    title: 'Performance / Debugging and Unix Fundamentals',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/14-consulting.md'
  },
  {
    id: '16',
    title: 'Infrastructure / Operations',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/16-infrastructure-operations.md'
  },
  {
    id: '17',
    title: 'Computer Science',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/17-computer-science.md'
  },
  {
    id: '18',
    title: 'Design',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/18-design.md'
  }
]

apprenticeship_levels = [
  {
    title: 'Apprentice Level 1',
  },
  {
    title: 'Apprentice Level 2',
  },
  {
    title: 'Apprenticeship Stretch Goals',
  }
]

skills_levels.each do |skill_level|
  SkillsLevel.create(skill_level)
end

themes.each do |theme|
  Theme.create(theme)
end

apprenticeship_levels.each do |apprenticeship_level|
  ApprenticeshipLevel.create(apprenticeship_level)
end
