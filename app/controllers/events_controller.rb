class EventsController < ApplicationController
  def index
    @user = User.find(1)
    accessable_project = @user.projects.map { |project| project[:id] }
    @events = Event.where("project_id in (?)", accessable_project).limit(50)
  end
end
