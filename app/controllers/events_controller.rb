class EventsController < ApplicationController
  def index
    @title = "Event controller demo"
    @user = User.first
    @team = @user.team
    @teammates = User.where("team_id = (?)", @team)
    @projects = @user.projects
    accessable_project = @projects.map { |project| project[:id] }
    @events = Event.where("project_id in (?)", accessable_project).limit(50).order(created_at: :desc)
  end
end
