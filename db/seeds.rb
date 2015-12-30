# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(project_name: "Kanban App", user_id: "1")

Task.create(
  task_name: "User story in time.",
  description: "For glorious Winter Breakdownathon",
  project_id: "1",
  phase: "1"
)

Task.create(
  task_name: "Test in time.",
  description: "For glorious Winter Breakdownathon",
  project_id: "1",
  phase: "2"
)

Task.create(
  task_name: "Build in time.",
  description: "For glorious Winter Breakdownathon",
  project_id: "1",
  phase: "3"
)

Task.create(
  task_name: "Review in time.",
  description: "For glorious Winter Breakdownathon",
  project_id: "1",
  phase: "4"
)

Task.create(
  task_name: "Refactor in time.",
  description: "For glorious Winter Breakdownathon",
  project_id: "1",
  phase: "5"
)

Task.create(
  task_name: "Done in time.",
  description: "For glorious Winter Breakdownathon",
  project_id: "1",
  phase: "6"
)
