# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Team.create(name: "喵喵咪")

User.create(name: "呆喵", team_id: 1)
User.create(name: "笨喵", team_id: 1)

Project.create(name: "打老鼠", team_id: 1)
Project.create(name: "吃老鼠", team_id: 1)

Access.create(user_id: 1, project_id: 1)
Access.create(user_id: 2 , project_id: 1)
Access.create(user_id: 1, project_id: 2)
Access.create(user_id: 2 , project_id: 2)

todo_event_content =  {
      title: "打老鼠",
      content: "打老鼠打老鼠",
      due: Date.today,
      worker_id: 3,
      worker_name: "笨喵",
      status: 0
    }

comment_event_content = {
      content: "喵老鼠",
      commentable_id: 1,
      commentable_type: "todos"
    }

todo_add_event = Event.create(creator_id: 1, creator_name: "呆喵", 
      resource_type: "todos", action_type: "add",
      project_id: 1, content: todo_event_content.to_json)

todo_add_event = Event.create(creator_id: 2, creator_name: "笨喵",
                              resource_type: "todos", action_type: "add",
                              project_id: 1, content: todo_event_content.to_json)

todo_assign_event = Event.create(creator_id: 1, creator_name: "呆喵", 
      resource_type: "todos", action_type: "assign",
      project_id: 1, content: todo_event_content.to_json)

todo_change_due_event = Event.create(creator_id: 1, creator_name: "呆喵", 
      resource_type: "todos", action_type: "change_due",
      project_id: 1, content: todo_event_content.to_json)

todo_change_worker_event = Event.create(creator_id: 1, creator_name: "呆喵", 
      resource_type: "todos", action_type: "change_worker",
      project_id: 2, content: todo_event_content.to_json)

todo_complete_event = Event.create(creator_id: 1, creator_name: "呆喵", 
      resource_type: "todos", action_type: "complete",
      project_id: 1, content: todo_event_content.to_json)

todo_delete_event = Event.create(creator_id: 1, creator_name: "呆喵", 
      resource_type: "todos", action_type: "assign",
      project_id: 1, content: todo_event_content.to_json)

comment_add_event = Event.create(creator_id: 1, creator_name: "呆喵", 
      resource_type: "comments", action_type: "add",
      project_id: 1, content: comment_event_content.to_json)