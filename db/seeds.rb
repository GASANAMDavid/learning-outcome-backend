require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

skills_levels = [
  {
    description: 'Default',
    color: 'white'
  },
  {
    description: 'I can give a definition or example of this outcome. I feel comfortable utilizing this outcome on a project with little to no guidance.',
    color: 'green'
  },
  {
    description: 'I can give a definition or example of this outcome. I feel comfortable utilizing this outcome on a project, however I would require guidance.',
    color: 'yellow'
  },
  {
    description: 'I have heard of this outcome, however I do not feel comfortable utilizing it on a project.',
    color: 'orange'
  },
  {
    description: 'I have never heard of this.',
    color: 'red'
  }
]

themes = [
  {
    title: 'Automated Testing',
    link: 'https://github.com/oneworldcoders/apprenticeship_syllabus/blob/master/shared_resources/outcomes/01-automated-testing.md'
  },
  {
    title: 'Refactoring',
    link: 'https://github.com/oneworldcoders/apprenticeship_syllabus/blob/master/shared_resources/outcomes/02-refactoring.md'
  },
  {
    title: 'Deliver Working Software',
    link: 'https://github.com/oneworldcoders/apprenticeship_syllabus/blob/master/shared_resources/outcomes/03-deliver-working-software.md'
  },
  {
    title: 'Legacy Code',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/04-legacy-code.md'
  },
  {
    title: 'Service Oriented Architecture',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/05-service-oriented-architecture.md'
  },
  {
    title: 'Polyglot Language Paradigms',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/06-polyglot-language-paradigms.md'
  },
  {
    title: 'Programmer Tooling',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/07-programmer-tooling.md'
  },
  {
    title: 'Security',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/08-security.md'
  },
  {
    title: 'Databases',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/09-databases.md'
  },
  {
    title: 'Technical Reading',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/10-technical-reading.md'
  },
  {
    title: 'Well-Formed Development Process',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/11-well-formed-development-process.md'
  },
  {
    title: 'Good Communication',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/12-good-communication.md'
  },
  {
    title: 'Collective Code Ownership',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/13-collective-code-ownership.md'
  },
  {
    title: 'Consulting',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/14-consulting.md'
  },
  {
    title: 'Performance / Debugging and Unix Fundamentals',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/14-consulting.md'
  },
  {
    title: 'Infrastructure / Operations',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/16-infrastructure-operations.md'
  },
  {
    title: 'Computer Science',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/17-computer-science.md'
  },
  {
    title: 'Design',
    link: 'https://github.com/8thlight/apprenticeship_syllabus/blob/master/shared_resources/outcomes/18-design.md'
  }
]

apprenticeship_levels = [
  {
    title: 'Apprentice Level 1'
  },
  {
    title: 'Apprentice Level 2'
  },
  {
    title: 'Apprenticeship Stretch Goals'
  }
]

skills = [
  {
    apprenticeship_level_id: '1',
    theme_id: '1',
    display: true,
    title: 'The Four-Phase Test'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '1',
    display: true,
    title: 'Three Rules of TDD'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '1',
    display: true,
    title: 'The Testing Pyramid'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '1',
    display: true,
    title: 'High Level Testing'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '1',
    display: true,
    title: 'Red/Green/Refactor TDD Cycle'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '1',
    display: true,
    title: 'Test Doubles'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '1',
    display: true,
    title: 'Nested Feedback Loops'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '1',
    display: true,
    title: 'Test Smells and Testing Tradeoffs'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '1',
    display: true,
    title: 'Inside-Out and Outside-In Development'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '1',
    display: true,
    title: 'Fixture Setup Patterns'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '2',
    display: true,
    title: 'Staying Green While Refactoring'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '2',
    display: true,
    title: 'Identifying Code Smells'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '2',
    display: true,
    title: 'Refactoring Pattherns: Rename Method, Extract Method'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '2',
    display: true,
    title: 'Refactoring Pattherns: Introduce Explaining Variable, Move Method'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '2',
    display: true,
    title: 'Refactoring in Small Steps'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '2',
    display: true,
    title: 'IDE Tooling for Refactoring'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '2',
    display: true,
    title: 'Multi-Step Refactoring Patterns'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '3',
    display: true,
    title: 'Walking Skeleton'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '3',
    display: true,
    title: 'Four Rules of Simple Design'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '3',
    display: true,
    title: 'Law of Demeter'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '3',
    display: true,
    title: 'Abstraction and Polymorphism'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '3',
    display: true,
    title: 'Pull vs Push (a.k.a Command Loop vs Evented)'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '3',
    display: true,
    title: 'Completeness: Discover and Address Error and Edge Cases'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '3',
    display: true,
    title: 'SOLID Principles'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '3',
    display: true,
    title: 'Introduction to Software Design Patterns'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '3',
    display: true,
    title: 'Inheritance vs. Composition'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '3',
    display: true,
    title: 'Package Principles'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '3',
    display: true,
    title: 'Background and Scheduled Jobs '
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '3',
    display: true,
    title: 'Additions Design Patterns'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '3',
    display: true,
    title: 'Boundaries and Seams Between Applications'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '3',
    display: true,
    title: 'Coupling vs. Cohesion'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '4',
    display: true,
    title: 'Finding and Creating Seams to Enable Testing'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '4',
    display: true,
    title: 'Breaking Dependencies'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '4',
    display: true,
    title: 'Characterization Testing'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '4',
    display: true,
    title: 'Building Confidence to Make Major Changes'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '4',
    display: true,
    title: 'Legacy Code Patterns'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '5',
    display: true,
    title: 'Frontend vs. Backend Separation'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '5',
    display: true,
    title: 'Structured Data (e.g. CSV, JSON, XML)'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '5',
    display: true,
    title: 'Curl'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '5',
    display: true,
    title: 'Single Page Application vs. Server Side Rendering'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '5',
    display: true,
    title: 'Consuming Restful APIs'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '5',
    display: true,
    title: 'GUI Tool to Test APIs (e.g. Paw, Postman)'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '5',
    display: true,
    title: 'HTTP Request / Response Format and Headers'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '5',
    display: true,
    title: 'HTTP Verbs (e.g. GET, PUT, POST, DELETE)'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '5',
    display: true,
    title: 'Browser Caching'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '5',
    display: true,
    title: 'Idempotency'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '6',
    display: true,
    title: 'Dynamic'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '6',
    display: true,
    title: 'Object Oriented'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '6',
    display: true,
    title: 'interpreted'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '6',
    display: true,
    title: 'Server'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '6',
    display: true,
    title: 'Weak vs. Strong Typing'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '6',
    display: true,
    title: 'Static'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '6',
    display: true,
    title: 'Functional'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '6',
    display: true,
    title: 'Compiled'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '6',
    display: true,
    title: 'Browser'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '6',
    display: true,
    title: 'Ramp Up on a New Stack in Two Weeks'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '7',
    display: true,
    title: 'Editors'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '7',
    display: true,
    title: 'Git'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '7',
    display: true,
    title: 'Shells'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '7',
    display: true,
    title: 'One Heavyweight IDE (e.g. Visual Studio, JetBrains)'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '7',
    display: true,
    title: 'Web Developer Tools'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '7',
    display: true,
    title: 'Owning and Customizing your Editor'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '7',
    display: true,
    title: 'Static Analysis'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '7',
    display: true,
    title: 'Linters'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '8',
    display: true,
    title: 'Credential Management'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '8',
    display: true,
    title: 'OWASP Top 10 (e.g. RailsGoat)'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '8',
    display: true,
    title: 'Authentication Schemas (e.g. Passwords, OAuth2)'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '8',
    display: true,
    title: 'Working Cross-Origin'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '8',
    display: true,
    title: 'Cryptography (Encryption, Hashing, Randomness)'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '9',
    display: true,
    title: 'Constructing Basics SQL Queries by Hand'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '9',
    display: true,
    title: 'Performance Basics (Logs, Indices, N+1 Problem)'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '9',
    display: true,
    title: 'Object Relational Mappers (ORMs)'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '9',
    display: true,
    title: 'Relational Schema Definition (Basic Types)'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '9',
    display: true,
    title: 'More Advanced Queries: Joins, Sub-Selects'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '9',
    display: true,
    title: 'Repository Patterns'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '9',
    display: true,
    title: 'Testing with a Database'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '9',
    display: true,
    title: 'Normalisation / Model Design'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '9',
    display: true,
    title: 'Disaster Recovery'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '9',
    display: true,
    title: 'Database Transactions'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '10',
    display: true,
    title: 'Reading Unfamiliar Code'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '10',
    display: true,
    title: 'Reading Specifications'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: 'Reading Errors',
    display: true,
    title: '10'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '10',
    display: true,
    title: 'Reading Language / Library Documentation'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '10',
    display: true,
    title: 'Stack Traces'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '10',
    display: true,
    title: 'Interpreting Requirements'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '10',
    display: true,
    title: 'Handling Ambiguity in Specifications'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '11',
    display: true,
    title: 'Connected to the Community'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '11',
    display: true,
    title: 'Writing Stories'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '11',
    display: true,
    title: 'Documenting Progress'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '11',
    display: true,
    title: 'Estimating'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '11',
    display: true,
    title: 'Minimize WIP'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '11',
    display: true,
    title: 'Trunk-Based Development'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '11',
    display: true,
    title: 'Asking for and Finding Help'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '11',
    display: true,
    title: 'Code Reviews'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '11',
    display: true,
    title: 'Concept of Velocity'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '11',
    display: true,
    title: 'Time vs. Complexity Estimates'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '11',
    display: true,
    title: 'Scrum vs. Kanban'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '11',
    display: true,
    title: 'Feature Branching'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '11',
    display: true,
    title: 'Advanced Version Control (e.g. Tagging, Hooks)'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '11',
    display: true,
    title: 'Holding Successful Retrospectives'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '11',
    display: true,
    title: 'Project Planning'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '12',
    display: true,
    title: 'Whiteboarding'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '12',
    display: true,
    title: 'Effectively Use Communication Tools'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '12',
    display: true,
    title: 'Presenting Work at Stand Up'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '12',
    display: true,
    title: 'Explain a Technical Idea to a Colleague'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '12',
    display: true,
    title: 'Create and Deliver a Compelling Presentation'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '12',
    display: true,
    title: 'Write Compelling Blog Posts'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '12',
    display: true,
    title: 'Presenting and Preparing Demos'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '12',
    display: true,
    title: 'Giving Technical Talks'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '12',
    display: true,
    title: 'Teaching and Mentoring'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '13',
    display: true,
    title: 'Effective Pairing'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '13',
    display: true,
    title: 'Pairing Techniques (e.g. Driver-Navigator and Ping-Pong)'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '13',
    display: true,
    title: 'Working Independently'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '13',
    display: true,
    title: 'Remote Pairing'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '13',
    display: true,
    title: 'Adapting to Local Norms and Styles'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '13',
    display: true,
    title: 'Empathy for Why Certain Decisions Were Made'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '13',
    display: true,
    title: 'Scout Rule'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '14',
    display: true,
    title: 'Know Your Audience'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '14',
    display: true,
    title: 'Know Your Role as an 8th Light Consultant'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '14',
    display: true,
    title: 'Inspiring Confidence as a New Team Member'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '14',
    display: true,
    title: 'Explain the Why Behind Recommendations'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '14',
    display: true,
    title: 'Understand How 8th Light Helps Our Customers'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '14',
    display: true,
    title: 'Navigating Interpersonal Relationships'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '14',
    display: true,
    title: 'Establish Rapport With Clients'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '14',
    display: true,
    title: 'Understand How Your Project Solves a Business Need for the Client'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '14',
    display: true,
    title: 'Engaging Clients With Empathy '
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '15',
    display: true,
    title: 'Processes'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '15',
    display: true,
    title: 'Basic Commands (ls, cd, grep, etc.)'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '15',
    display: true,
    title: 'Filesystems and Permissions'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '15',
    display: true,
    title: 'System Resource Investigation (e.g. CPU, Memory, Disk)'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '15',
    display: true,
    title: 'Bash Scripting'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '15',
    display: true,
    title: 'Basics of SSH'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '15',
    display: true,
    title: 'Language-Specific Observability Tools (e.g. Collect Stack Traces)'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '15',
    display: true,
    title: 'Monitoring / Alerting'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '15',
    display: true,
    title: 'Log Aggregation'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '16',
    display: true,
    title: 'Continuous Integration Services'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '16',
    display: true,
    title: 'SaSS Infrastucture Providers (e.g. Heroku)'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '16',
    display: true,
    title: 'Cloud Providers (e.g. AWS, Azure)'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '16',
    display: true,
    title: 'Manually Server Configuration and Deployment'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '16',
    display: true,
    title: 'Server Infrastructure as Code (e.g. Terraform)'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '16',
    display: true,
    title: 'Server Configuration as Code (e.g. Chef, Puppet, Ansible)'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '16',
    display: true,
    title: 'Telemetry and Monitoring'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '17',
    display: true,
    title: 'Computer Science vs. Programming'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '17',
    display: true,
    title: 'Recursion'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '17',
    display: true,
    title: 'Conceptual Big O Notation'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '17',
    display: true,
    title: 'Intermediate Algorithms (e.g. Minimax, Sort)'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '17',
    display: true,
    title: 'Basic Data Structures (Array, Set, Dictionary, Map)'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '17',
    display: true,
    title: 'Introduction to Boolean Algebra'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '17',
    display: true,
    title: 'Basic Concurrency (e.g. Threads, Locking, Atomic Operations)'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '17',
    display: true,
    title: 'Advanced Data Structures (e.g. Linked Lists, Trees, Graphs)'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '17',
    display: true,
    title: 'Intermediate Algorithms (e.g. Path Finding, Minimax with Alpha-Beta Pruning)'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '18',
    display: true,
    title: 'Understand Design at 8th Light'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '18',
    display: true,
    title: 'Understand UX Design'
  },
  {
    apprenticeship_level_id: '1',
    theme_id: '18',
    display: true,
    title: 'Accessibility: Colors, Labels, Font'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '18',
    display: true,
    title: "Executing a Designer's Design"
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '18',
    display: true,
    title: 'Understand Web Design Basics'
  },
  {
    apprenticeship_level_id: '2',
    theme_id: '18',
    display: true,
    title: 'Accessibility: i18n+l10n+a11y'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '18',
    display: true,
    title: 'Recognize When a Project Might Need a Designer'
  },
  {
    apprenticeship_level_id: '3',
    theme_id: '18',
    display: true,
    title: 'Accessibility: Auditing Tools'
  }

]

roles = [
  {
    name: 'apprentice',
    info: 'An apprentice is trained to write and test code, working in a professional development environment, and using software development frameworks and methodologies'
  }
]

users = [
  {
    first_name: 'David',
    last_name: 'Manzi',
    email: 'david.manzi@oneworldcoders.com',
    role_id: 1
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

skills.each do |skill|
  Skill.create(skill)
end

roles.each do |role|
  Role.create(role)
end

users.each do |user|
  User.create(user)
end
