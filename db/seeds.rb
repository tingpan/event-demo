# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
todo_event_content =  {
      title: "打老鼠",
      content: "打老鼠打老鼠",
      due: Date.today,
      worker_id: 3,
      worker_name: "笨喵",
      status: 0
    }

todo_add_event = Event.create(creator_id: 1, creator_name: "呆喵", 
      resource_type: "todos", action_type: "add",
      project_id: 1, content: todo_event_content.to_json)

todo_assign_event = Event.create(creator_id: 1, creator_name: "呆喵", 
      resource_type: "todos", action_type: "assign",
      project_id: 1, content: todo_event_content.to_json)

todo_change_due_event = Event.create(creator_id: 1, creator_name: "呆喵", 
      resource_type: "todos", action_type: "change_due",
      project_id: 1, content: todo_event_content.to_json)