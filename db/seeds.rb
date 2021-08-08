SkillsLevel.destroy_all
Skill.destroy_all
ApprenticeshipLevel.destroy_all
Theme.destroy_all
skills_levels = [
  {
    id: '0',
    description: 'Default',
    color: 'white'
  },
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
    id: '1',
    title: 'Apprentice Level 1'
  },
  {
    id: '2',
    title: 'Apprentice Level 2'
  },
  {
    id: '3',
    title: 'Apprenticeship Stretch Goals'
  }
]

skills = [
  {
    id: 'b7de744c-ea80-4694-9937-2d4863c01134',
    skills_level_id: '1',
    theme_id: '1',
    title: 'The Four-Phase Test'
  },
  {
    id: '6909b194-8b2a-4620-bab3-1d77c1364e60',
    skills_level_id: '1',
    theme_id: '1',
    title: 'Three Rules of TDD'
  },
  {
    id: '8912bb27-797e-4a63-9161-303944be6d2a',
    skills_level_id: '1',
    theme_id: '1',
    title: 'The Testing Pyramid'
  },
  {
    id: 'a5038bc0-4cdb-4d86-8f9c-3e3253543295',
    skills_level_id: '1',
    theme_id: '1',
    title: 'High Level Testing'
  },
  {
    id: '5323478b-fd47-4f01-a708-7e36b01a9c81',
    skills_level_id: '2',
    theme_id: '1',
    title: 'Red/Green/Refactor TDD Cycle'
  },
  {
    id: 'c25907d2-ad0b-4f0b-93b3-074c452cf9d3',
    skills_level_id: '2',
    theme_id: '1',
    title: 'Test Doubles'
  },
  {
    id: '93aaa67e-ab31-4ad7-a112-c017a31ba097',
    skills_level_id: '2',
    theme_id: '1',
    title: 'Nested Feedback Loops'
  },
  {
    id: '04d8386a-c84a-4f8b-8c78-4fe82f4f896a',
    skills_level_id: '2',
    theme_id: '1',
    title: 'Test Smells and Testing Tradeoffs'
  },
  {
    id: '417d45f3-ef04-4cb4-824d-3a56c9edbe18',
    skills_level_id: '3',
    theme_id: '1',
    title: 'Inside-Out and Outside-In Development'
  },
  {
    id: '65fb7533-803c-46ab-823c-8b0bd283f972',
    skills_level_id: '3',
    theme_id: '1',
    title: 'Fixture Setup Patterns'
  },
  {
    id: '09eb997e-9a7c-4c66-a0ba-3b1a854e25f6',
    skills_level_id: '1',
    theme_id: '2',
    title: 'Staying Green While Refactoring'
  },
  {
    id: 'e1c91158-da61-455b-8df2-9ff6a36737c5',
    skills_level_id: '1',
    theme_id: '2',
    title: 'Identifying Code Smells'
  },
  {
    id: '084861ec-a918-435f-b22d-77ed2fb51340',
    skills_level_id: '1',
    theme_id: '2',
    title: 'Refactoring Pattherns: Rename Method, Extract Method'
  },
  {
    id: '5fc5200b-b3f1-47d0-bee4-c11049e082d3',
    skills_level_id: '2',
    theme_id: '2',
    title: 'Refactoring Pattherns: Introduce Explaining Variable, Move Method'
  },
  {
    id: '00eef425-d505-4798-8a17-c388a3233f71',
    skills_level_id: '2',
    theme_id: '2',
    title: 'Refactoring in Small Steps'
  },
  {
    id: '41569b85-3013-4b5c-87af-5927090a8d66',
    skills_level_id: '2',
    theme_id: '2',
    title: 'IDE Tooling for Refactoring'
  },
  {
    id: '9fa99ac8-1c83-49a6-90e4-190a4dc055d1',
    skills_level_id: '3',
    theme_id: '2',
    title: 'Multi-Step Refactoring Patterns'
  },
  {
    id: '47f5ee45-0533-4bbc-91b7-849715df540b',
    skills_level_id: '1',
    theme_id: '3',
    title: 'Walking Skeleton'
  },
  {
    id: '46af6135-8404-4b7c-bedb-9c81b7006199',
    skills_level_id: '1',
    theme_id: '3',
    title: 'Four Rules of Simple Design'
  },
  {
    id: '6586f3eb-f8c1-45d7-8943-11bf164b0ffc',
    skills_level_id: '1',
    theme_id: '3',
    title: 'Law of Demeter'
  },
  {
    id: '7f4e2284-952c-4729-ac09-5c963c591e65',
    skills_level_id: '1',
    theme_id: '3',
    title: 'Abstraction and Polymorphism'
  },
  {
    id: '1c5bd57e-0f91-45a6-a713-e0010288f6a4',
    skills_level_id: '1',
    theme_id: '3',
    title: 'Pull vs Push (a.k.a Command Loop vs Evented)'
  },
  {
    id: '77d11efd-77b4-4eb6-adcd-7d55dc00d7f7',
    skills_level_id: '2',
    theme_id: '3',
    title: 'Completeness: Discover and Address Error and Edge Cases'
  },
  {
    id: '720da1c6-2b09-48bf-897a-97f5ddde5e93',
    skills_level_id: '2',
    theme_id: '3',
    title: 'SOLID Principles'
  },
  {
    id: 'fc28a7fe-e27f-4a47-be8b-677bddf11d9a',
    skills_level_id: '2',
    theme_id: '3',
    title: 'Introduction to Software Design Patterns'
  },
  {
    id: '5156315e-f883-45cd-ad8f-8936cd2b0e39',
    skills_level_id: '2',
    theme_id: '3',
    title: 'Inheritance vs. Composition'
  },
  {
    id: 'de17326d-01ed-45c5-81bb-017039e24899',
    skills_level_id: '2',
    theme_id: '3',
    title: 'Package Principles'
  },
  {
    id: '28ac2656-3e7e-421e-a42f-ed14a8f646c2',
    skills_level_id: '3',
    theme_id: '3',
    title: 'Background and Scheduled Jobs '
  },
  {
    id: '3a6afaf2-3f33-4689-9e34-0e067e781d4e',
    skills_level_id: '3',
    theme_id: '3',
    title: 'Additions Design Patterns'
  },
  {
    id: 'f2080d6c-c604-4883-9ba9-e374f54dd076',
    skills_level_id: '3',
    theme_id: '3',
    title: 'Boundaries and Seams Between Applications'
  },
  {
    id: '35fc9a4b-79ed-49a4-8644-6e2a3b1469d0',
    skills_level_id: '3',
    theme_id: '3',
    title: 'Coupling vs. Cohesion'
  },
  {
    id: '2672e6b2-dfec-4f46-b5ac-f6532219aa22',
    skills_level_id: '1',
    theme_id: '4',
    title: 'Finding and Creating Seams to Enable Testing'
  },
  {
    id: 'efb78e7f-d961-4067-ace0-6f8d2a0f8bdb',
    skills_level_id: '1',
    theme_id: '4',
    title: 'Breaking Dependencies'
  },
  {
    id: 'a99e5ebc-787a-47db-893f-a3f8b9a59aa1',
    skills_level_id: '2',
    theme_id: '4',
    title: 'Characterization Testing'
  },
  {
    id: '071a2191-9f6e-4e18-bf49-ec246566b400',
    skills_level_id: '2',
    theme_id: '4',
    title: 'Building Confidence to Make Major Changes'
  },
  {
    id: '2225543f-430f-486f-86a3-93ff37d57656',
    skills_level_id: '3',
    theme_id: '4',
    title: 'Legacy Code Patterns'
  },
  {
    id: '3e4f535a-5bc3-47bb-be33-73f126abdcad',
    skills_level_id: '1',
    theme_id: '5',
    title: 'Frontend vs. Backend Separation'
  },
  {
    id: '3f70e5be-387b-4e4c-aca5-5cad37dbb7b3',
    skills_level_id: '1',
    theme_id: '5',
    title: 'Structured Data (e.g. CSV, JSON, XML)'
  },
  {
    id: '19aaea92-ed1a-4f80-89b7-2ba8d8f8d0a3',
    skills_level_id: '1',
    theme_id: '5',
    title: 'Curl'
  },
  {
    id: '6668b1c6-f151-48cb-b43b-078834c0e2b1',
    skills_level_id: '2',
    theme_id: '5',
    title: 'Single Page Application vs. Server Side Rendering'
  },
  {
    id: '173c52ec-2bfa-4a72-a32d-25695519eea5',
    skills_level_id: '2',
    theme_id: '5',
    title: 'Consuming Restful APIs'
  },
  {
    id: '9a57dcca-7782-4868-b118-46893f79fb3b',
    skills_level_id: '2',
    theme_id: '5',
    title: 'GUI Tool to Test APIs (e.g. Paw, Postman)'
  },
  {
    id: '24765d03-01c8-4e8a-97e1-69c18d0decce',
    skills_level_id: '2',
    theme_id: '5',
    title: 'HTTP Request / Response Format and Headers'
  },
  {
    id: '29e7b32b-6c49-44dc-8b0e-c6f76d6e35d2',
    skills_level_id: '2',
    theme_id: '5',
    title: 'HTTP Verbs (e.g. GET, PUT, POST, DELETE)'
  },
  {
    id: '10d7ce22-6333-469e-8f4e-eee3838eff68',
    skills_level_id: '3',
    theme_id: '5',
    title: 'Browser Caching'
  },
  {
    id: 'ac68aba7-9611-48ef-ae07-a266403f3514',
    skills_level_id: '3',
    theme_id: '5',
    title: 'Idempotency'
  },
  {
    id: 'e5455c25-785a-4d7f-95c2-0a48d889a78f',
    skills_level_id: '1',
    theme_id: '6',
    title: 'Dynamic'
  },
  {
    id: 'ed6412d3-56a2-4a57-8875-a72b1e622adb',
    skills_level_id: '1',
    theme_id: '6',
    title: 'Object Oriented'
  },
  {
    id: '92908dab-7bfa-4869-b9d1-5496043985f2',
    skills_level_id: '1',
    theme_id: '6',
    title: 'interpreted'
  },
  {
    id: '7407ca59-d2c0-4083-baff-fcd75c467de8',
    skills_level_id: '1',
    theme_id: '6',
    title: 'Server'
  },
  {
    id: 'd28b6bf0-25ba-4ee7-8672-aedc0993fdd4',
    skills_level_id: '1',
    theme_id: '6',
    title: 'Weak vs. Strong Typing'
  },
  {
    id: '2eb53dd7-fbf7-47de-9473-6f5079f3c40a',
    skills_level_id: '2',
    theme_id: '6',
    title: 'Static'
  },
  {
    id: '96cd904d-445c-47d6-a61e-53bc2408837c',
    skills_level_id: '2',
    theme_id: '6',
    title: 'Functional'
  },
  {
    id: '63457c8e-f134-4236-a79d-348572cab771',
    skills_level_id: '2',
    theme_id: '6',
    title: 'Compiled'
  },
  {
    id: '589428ad-bf69-4b1f-b1e6-eb1199836aac',
    skills_level_id: '2',
    theme_id: '6',
    title: 'Browser'
  },
  {
    id: 'c03129f7-819d-41c4-ba05-4ae1bfbba6da',
    skills_level_id: '2',
    theme_id: '6',
    title: 'Ramp Up on a New Stack in Two Weeks'
  },
  {
    id: 'e0c0e5a3-c123-4311-9f60-080d56ff53df',
    skills_level_id: '1',
    theme_id: '7',
    title: 'Editors'
  },
  {
    id: '44908b18-04f3-4bad-a99b-83e38a44862b',
    skills_level_id: '1',
    theme_id: '7',
    title: 'Git'
  },
  {
    id: 'bbb5d337-993d-49c8-a135-c6c780957743',
    skills_level_id: '1',
    theme_id: '7',
    title: 'Shells'
  },
  {
    id: '84d351d4-3457-4062-a836-76de2fc5d153',
    skills_level_id: '2',
    theme_id: '7',
    title: 'One Heavyweight IDE (e.g. Visual Studio, JetBrains)'
  },
  {
    id: 'c63d0bfd-18a4-473e-a9c0-bef67246c497',
    skills_level_id: '2',
    theme_id: '7',
    title: 'Web Developer Tools'
  },
  {
    id: '2e975f27-b25a-4414-8697-655f193e0fef',
    skills_level_id: '3',
    theme_id: '7',
    title: 'Owning and Customizing your Editor'
  },
  {
    id: '12aac97f-bdcc-40fd-9b04-e9860d967b50',
    skills_level_id: '3',
    theme_id: '7',
    title: 'Static Analysis'
  },
  {
    id: '6ea31e1d-4630-401f-834e-3615b0b8f290',
    skills_level_id: '3',
    theme_id: '7',
    title: 'Linters'
  },
  {
    id: '97becd97-ff14-423d-a8d3-7fd4a987da4a',
    skills_level_id: '1',
    theme_id: '8',
    title: 'Credential Management'
  },
  {
    id: 'b37d0280-2e62-4ce3-a20e-18f9d87530b8',
    skills_level_id: '1',
    theme_id: '8',
    title: 'OWASP Top 10 (e.g. RailsGoat)'
  },
  {
    id: '89279453-a3a9-41f3-850e-511cfff5459b',
    skills_level_id: '2',
    theme_id: '8',
    title: 'Authentication Schemas (e.g. Passwords, OAuth2)'
  },
  {
    id: '8c86531f-243d-42f5-baaa-2e4584073d8e',
    skills_level_id: '2',
    theme_id: '8',
    title: 'Working Cross-Origin'
  },
  {
    id: 'c7085bed-65b5-4974-b925-8ffcd3d789d0',
    skills_level_id: '3',
    theme_id: '8',
    title: 'Cryptography (Encryption, Hashing, Randomness)'
  },
  {
    id: '5e6320b9-e422-4edc-9944-1d0aa850215b',
    skills_level_id: '1',
    theme_id: '9',
    title: 'Constructing Basics SQL Queries by Hand'
  },
  {
    id: '13ad8d59-46cc-413e-985a-aae18cd96293',
    skills_level_id: '1',
    theme_id: '9',
    title: 'Performance Basics (Logs, Indices, N+1 Problem)'
  },
  {
    id: '3fd513d1-06e6-4c41-b5d7-aefa534e27fd',
    skills_level_id: '1',
    theme_id: '9',
    title: 'Object Relational Mappers (ORMs)'
  },
  {
    id: 'cc1d9714-e65b-4f51-b99f-6576d74b00e9',
    skills_level_id: '1',
    theme_id: '9',
    title: 'Relational Schema Definition (Basic Types)'
  },
  {
    id: 'a7f9ce3a-ff15-47af-8d41-8840a08b83bb',
    skills_level_id: '2',
    theme_id: '9',
    title: 'More Advanced Queries: Joins, Sub-Selects'
  },
  {
    id: '88a20f70-42ea-4368-ac80-8bd999de1ba2',
    skills_level_id: '2',
    theme_id: '9',
    title: 'Repository Patterns'
  },
  {
    id: '708b8f76-ed2f-4334-a29a-e75c4dd01e69',
    skills_level_id: '2',
    theme_id: '9',
    title: 'Testing with a Database'
  },
  {
    id: 'eecb211b-a449-41af-8ec8-d3a796dc693c',
    skills_level_id: '2',
    theme_id: '9',
    title: 'Normalisation / Model Design'
  },
  {
    id: 'f16e209c-7d21-48bb-baed-4fc8fdbc737d',
    skills_level_id: '3',
    theme_id: '9',
    title: 'Disaster Recovery'
  },
  {
    id: '4d3be267-8180-44c8-be2b-a920bde56b3a',
    skills_level_id: '3',
    theme_id: '9',
    title: 'Database Transactions'
  },
  {
    id: 'add91200-82b7-495a-bfd6-3942163eb0a8',
    skills_level_id: '1',
    theme_id: '10',
    title: 'Reading Unfamiliar Code'
  },
  {
    id: 'c6416310-f295-40d7-a3a0-214a7f6a9dac',
    skills_level_id: '1',
    theme_id: '10',
    title: 'Reading Specifications'
  },
  {
    id: 'a3f7c767-695d-4f29-9754-959dd9fd774e',
    skills_level_id: '1',
    theme_id: 'Reading Errors',
    title: '10'
  },
  {
    id: 'aa35c51f-b058-4c8f-b14f-c94920c67eb0',
    skills_level_id: '1',
    theme_id: '10',
    title: 'Reading Language / Library Documentation'
  },
  {
    id: '95ee8452-fcdb-431c-a0b7-d9bbd66cd2a0',
    skills_level_id: '2',
    theme_id: '10',
    title: 'Stack Traces'
  },
  {
    id: '2ec749e1-6b0c-407d-a121-29c40965d79e',
    skills_level_id: '2',
    theme_id: '10',
    title: 'Interpreting Requirements'
  },
  {
    id: 'ac83c575-d544-4835-9852-dbc63618f09e',
    skills_level_id: '3',
    theme_id: '10',
    title: 'Handling Ambiguity in Specifications'
  },
  {
    id: '482b20c7-cf95-4f9e-89e0-7a085ab37f14',
    skills_level_id: '1',
    theme_id: '11',
    title: 'Connected to the Community'
  },
  {
    id: 'dbab1b93-c07b-451f-add9-65f33f4325a6',
    skills_level_id: '1',
    theme_id: '11',
    title: 'Writing Stories'
  },
  {
    id: '6e5cee8f-06e6-4ee5-a5d7-a4e6e1d28b24',
    skills_level_id: '1',
    theme_id: '11',
    title: 'Documenting Progress'
  },
  {
    id: 'c6e9aada-c135-4c77-a19d-25e48f1f595e',
    skills_level_id: '1',
    theme_id: '11',
    title: 'Estimating'
  },
  {
    id: '045ad668-e19e-4646-9f21-ffe5ec665221',
    skills_level_id: '1',
    theme_id: '11',
    title: 'Minimize WIP'
  },
  {
    id: '0af9d80d-ccc0-4f3e-837a-50b90cdb948d',
    skills_level_id: '1',
    theme_id: '11',
    title: 'Trunk-Based Development'
  },
  {
    id: '406cb1be-9576-49ba-bd86-466c8af28dd5',
    skills_level_id: '2',
    theme_id: '11',
    title: 'Asking for and Finding Help'
  },
  {
    id: 'a4cd1c3f-825a-46d5-9ec4-bb97debb28a9',
    skills_level_id: '2',
    theme_id: '11',
    title: 'Code Reviews'
  },
  {
    id: 'e22082eb-a63f-4570-bf9b-fc6de64d3dfc',
    skills_level_id: '2',
    theme_id: '11',
    title: 'Concept of Velocity'
  },
  {
    id: '45b9b0d6-ab67-4f18-8fc0-85abfa3f3093',
    skills_level_id: '2',
    theme_id: '11',
    title: 'Time vs. Complexity Estimates'
  },
  {
    id: '94f257c8-3dbf-4872-9dea-5e8dd6adf246',
    skills_level_id: '2',
    theme_id: '11',
    title: 'Scrum vs. Kanban'
  },
  {
    id: '21e903c2-c5d5-4c46-9092-795250c64c07',
    skills_level_id: '2',
    theme_id: '11',
    title: 'Feature Branching'
  },
  {
    id: '8385c29e-d8c7-4acd-b12f-2f59bfe60693',
    skills_level_id: '2',
    theme_id: '11',
    title: 'Advanced Version Control (e.g. Tagging, Hooks)'
  },
  {
    id: '998ffa6d-f78f-422e-9262-f2c31e7ffd07',
    skills_level_id: '3',
    theme_id: '11',
    title: 'Holding Successful Retrospectives'
  },
  {
    id: '43b42165-621c-4aaa-ad57-4d89c83e6994',
    skills_level_id: '3',
    theme_id: '11',
    title: 'Project Planning'
  },
  {
    id: '6d0015a4-6432-4dbb-8cbc-e9f9f8e23c4b',
    skills_level_id: '1',
    theme_id: '12',
    title: 'Whiteboarding'
  },
  {
    id: 'b61e0266-eb46-457d-8a9a-a47554f397b6',
    skills_level_id: '1',
    theme_id: '12',
    title: 'Effectively Use Communication Tools'
  },
  {
    id: '7e443326-7cc9-4d38-9a0d-67320b6e7622',
    skills_level_id: '1',
    theme_id: '12',
    title: 'Presenting Work at Stand Up'
  },
  {
    id: '050108dd-d7ff-48ab-ab46-193e96e2c4eb',
    skills_level_id: '1',
    theme_id: '12',
    title: 'Explain a Technical Idea to a Colleague'
  },
  {
    id: '1b63b890-d3dc-410a-a7d2-cc535ecb6e5c',
    skills_level_id: '2',
    theme_id: '12',
    title: 'Create and Deliver a Compelling Presentation'
  },
  {
    id: '50c29d3f-ff19-4212-9c38-7a4be76430f2',
    skills_level_id: '2',
    theme_id: '12',
    title: 'Write Compelling Blog Posts'
  },
  {
    id: '336812fe-9bb8-4089-85c1-36d9f44837ec',
    skills_level_id: '2',
    theme_id: '12',
    title: 'Presenting and Preparing Demos'
  },
  {
    id: '242002f1-8630-4092-b79d-29ddd0c527ee',
    skills_level_id: '3',
    theme_id: '12',
    title: 'Giving Technical Talks'
  },
  {
    id: '528cf779-4d09-4eed-94a8-9383fe15642b',
    skills_level_id: '3',
    theme_id: '12',
    title: 'Teaching and Mentoring'
  },
  {
    id: '7c3292fd-b1fc-4b5d-8476-8b7193a2ba6a',
    skills_level_id: '1',
    theme_id: '13',
    title: 'Effective Pairing'
  },
  {
    id: 'a8f857a6-c482-47fc-8066-17dccf99f230',
    skills_level_id: '1',
    theme_id: '13',
    title: 'Pairing Techniques (e.g. Driver-Navigator and Ping-Pong)'
  },
  {
    id: 'ec5cb8bf-eaea-46fd-8dc4-f0a2e1ce7143',
    skills_level_id: '1',
    theme_id: '13',
    title: 'Working Independently'
  },
  {
    id: '34f65f1e-8ef9-4000-bd17-3ddac78d19a8',
    skills_level_id: '2',
    theme_id: '13',
    title: 'Remote Pairing'
  },
  {
    id: '0dad2180-d7ab-473f-8af6-2670e2e663a8',
    skills_level_id: '2',
    theme_id: '13',
    title: 'Adapting to Local Norms and Styles'
  },
  {
    id: 'a68b1736-a335-4015-a214-7128d8e0afd6',
    skills_level_id: '2',
    theme_id: '13',
    title: 'Empathy for Why Certain Decisions Were Made'
  },
  {
    id: '6cd36ec6-16b9-43d5-9e8c-49ee99480b69',
    skills_level_id: '2',
    theme_id: '13',
    title: 'Scout Rule'
  },
  {
    id: 'a8664b97-bde1-416d-babc-b6c62a3b843e',
    skills_level_id: '1',
    theme_id: '14',
    title: 'Know Your Audience'
  },
  {
    id: '9e759811-d335-4ff6-8636-ac3799645568',
    skills_level_id: '1',
    theme_id: '14',
    title: 'Know Your Role as an 8th Light Consultant'
  },
  {
    id: 'e583487a-274b-4727-b510-86e26e20c47c',
    skills_level_id: '1',
    theme_id: '14',
    title: 'Inspiring Confidence as a New Team Member'
  },
  {
    id: '75104b3e-c96e-40cb-a401-90d44eefe75e',
    skills_level_id: '2',
    theme_id: '14',
    title: 'Explain the Why Behind Recommendations'
  },
  {
    id: 'ede53d25-ca73-4445-a030-baf23928d727',
    skills_level_id: '2',
    theme_id: '14',
    title: 'Understand How 8th Light Helps Our Customers'
  },
  {
    id: 'c181a1fc-09b5-41b8-a01d-d7b532201531',
    skills_level_id: '2',
    theme_id: '14',
    title: 'Navigating Interpersonal Relationships'
  },
  {
    id: 'c22bd96b-e366-420b-9f42-5739ef1f582d',
    skills_level_id: '3',
    theme_id: '14',
    title: 'Establish Rapport With Clients'
  },
  {
    id: '56f5358c-c953-412c-a82a-5ad5196aea77',
    skills_level_id: '3',
    theme_id: '14',
    title: 'Understand How Your Project Solves a Business Need for the Client'
  },
  {
    id: '1f1c3a9b-d142-4919-9dc7-c9e48613b8de',
    skills_level_id: '3',
    theme_id: '14',
    title: 'Engaging Clients With Empathy '
  },
  {
    id: '49fd265a-d9e6-4eff-b8c5-dc3f11b1f1f8',
    skills_level_id: '1',
    theme_id: '15',
    title: 'Processes'
  },
  {
    id: '603aa030-ca0a-4e78-8ed1-12cb1b04a0a6',
    skills_level_id: '1',
    theme_id: '15',
    title: 'Basic Commands (ls, cd, grep, etc.)'
  },
  {
    id: '790033b4-258b-4e81-bb65-70f9e5c849d1',
    skills_level_id: '1',
    theme_id: '15',
    title: 'Filesystems and Permissions'
  },
  {
    id: 'b8dd551c-f8ec-4973-a827-b56d8ff56c00',
    skills_level_id: '2',
    theme_id: '15',
    title: 'System Resource Investigation (e.g. CPU, Memory, Disk)'
  },
  {
    id: 'f78bdfb3-fdf2-42d1-b8cf-1b6c27f9d884',
    skills_level_id: '2',
    theme_id: '15',
    title: 'Bash Scripting'
  },
  {
    id: '10c6f286-ef87-4b88-b82c-1e4b53c7cca7',
    skills_level_id: '2',
    theme_id: '15',
    title: 'Basics of SSH'
  },
  {
    id: '056110b1-70a1-4571-aba2-fda09ee2efe4',
    skills_level_id: '3',
    theme_id: '15',
    title: 'Language-Specific Observability Tools (e.g. Collect Stack Traces)'
  },
  {
    id: '0eea6b50-1f93-40aa-9ddb-ed85357333bf',
    skills_level_id: '3',
    theme_id: '15',
    title: 'Monitoring / Alerting'
  },
  {
    id: 'a7f10d1a-c14b-451a-a517-73176a5e5a25',
    skills_level_id: '3',
    theme_id: '15',
    title: 'Log Aggregation'
  },
  {
    id: '4a414252-be1f-46b0-a3c2-574c7fae5ef9',
    skills_level_id: '1',
    theme_id: '16',
    title: 'Continuous Integration Services'
  },
  {
    id: 'e5dbdf15-7530-4b70-b5b1-6ddbf01f1b5a',
    skills_level_id: '1',
    theme_id: '16',
    title: 'SaSS Infrastucture Providers (e.g. Heroku)'
  },
  {
    id: '95c784a2-22f9-4d47-b01e-5dccc6396087',
    skills_level_id: '2',
    theme_id: '16',
    title: 'Cloud Providers (e.g. AWS, Azure)'
  },
  {
    id: '98409ec2-1e80-4b9e-a002-a199b7c00af0',
    skills_level_id: '2',
    theme_id: '16',
    title: 'Manually Server Configuration and Deployment'
  },
  {
    id: 'cdc03b93-69e2-4302-8b65-aed8d6edc373',
    skills_level_id: '3',
    theme_id: '16',
    title: 'Server Infrastructure as Code (e.g. Terraform)'
  },
  {
    id: 'c29fc3d3-e25e-4770-9e31-ab5de8813ede',
    skills_level_id: '3',
    theme_id: '16',
    title: 'Server Configuration as Code (e.g. Chef, Puppet, Ansible)'
  },
  {
    id: 'ca951e45-9c1f-4c61-9092-fb25b548a86e',
    skills_level_id: '3',
    theme_id: '16',
    title: 'Telemetry and Monitoring'
  },
  {
    id: 'e89d26b8-9f00-4067-bd14-f9bc728914ae',
    skills_level_id: '1',
    theme_id: '17',
    title: 'Computer Science vs. Programming'
  },
  {
    id: '71fb6548-82fa-4a55-a7ad-12833344d8bb',
    skills_level_id: '1',
    theme_id: '17',
    title: 'Recursion'
  },
  {
    id: 'e9ef0b0f-bdcd-4674-9695-eb381fcfc86f',
    skills_level_id: '1',
    theme_id: '17',
    title: 'Conceptual Big O Notation'
  },
  {
    id: '8a31001d-1437-4cc1-a6a0-0d7a7e46974b',
    skills_level_id: '2',
    theme_id: '17',
    title: 'Intermediate Algorithms (e.g. Minimax, Sort)'
  },
  {
    id: '52d3c9a7-9fc1-4355-bae3-cfe1c729d65c',
    skills_level_id: '2',
    theme_id: '17',
    title: 'Basic Data Structures (Array, Set, Dictionary, Map)'
  },
  {
    id: '59bd25d2-b173-44ae-9e66-9833534ac660',
    skills_level_id: '2',
    theme_id: '17',
    title: 'Introduction to Boolean Algebra'
  },
  {
    id: 'df400ae9-97e0-476e-af94-dedb816e542d',
    skills_level_id: '3',
    theme_id: '17',
    title: 'Basic Concurrency (e.g. Threads, Locking, Atomic Operations)'
  },
  {
    id: '1cfe0431-33b2-40bb-8c9b-44121f3fa4a3',
    skills_level_id: '3',
    theme_id: '17',
    title: 'Advanced Data Structures (e.g. Linked Lists, Trees, Graphs)'
  },
  {
    id: '75c56223-de08-4ecc-ac5c-c6d2d3cb70cf',
    skills_level_id: '3',
    theme_id: '17',
    title: 'Intermediate Algorithms (e.g. Path Finding, Minimax with Alpha-Beta Pruning)'
  },
  {
    id: '17b4e936-c6cb-4ceb-9d1e-23f9239119f3',
    skills_level_id: '1',
    theme_id: '18',
    title: 'Understand Design at 8th Light'
  },
  {
    id: '51b716ca-edb4-4a0b-a3cf-bf37cd6b2857',
    skills_level_id: '1',
    theme_id: '18',
    title: 'Understand UX Design'
  },
  {
    id: 'e07525b0-f0fe-4ac6-a8e8-4db04e402ac9',
    skills_level_id: '1',
    theme_id: '18',
    title: 'Accessibility: Colors, Labels, Font'
  },
  {
    id: 'a6068dbd-5f7e-4a7c-bd12-e0c72a830a14',
    skills_level_id: '2',
    theme_id: '18',
    title: "Executing a Designer's Design"
  },
  {
    id: '8fd03e4d-3915-4d51-886e-143c7e8c35a8',
    skills_level_id: '2',
    theme_id: '18',
    title: 'Understand Web Design Basics'
  },
  {
    id: '52c7b967-73d6-44c9-ae1d-3c72598f4115',
    skills_level_id: '2',
    theme_id: '18',
    title: 'Accessibility: i18n+l10n+a11y'
  },
  {
    id: 'bde41039-f7f3-493a-b8ab-80dfb82fd11e',
    skills_level_id: '3',
    theme_id: '18',
    title: 'Recognize When a Project Might Need a Designer'
  },
  {
    id: '3d2cfcdb-d2b5-47f3-bace-818ac517c8e5',
    skills_level_id: '3',
    theme_id: '18',
    title: 'Accessibility: Auditing Tools'
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
