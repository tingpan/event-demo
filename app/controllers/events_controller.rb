class EventsController < ApplicationController
  def index
    @user = User.first
    @projects = @user.projects
    accessable_project = @projects.map { |project| project[:id] }
    @events = Event.where("project_id in (?)", accessable_project).limit(50)
  end
end
