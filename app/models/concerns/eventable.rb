module Eventable
  extend ActiveSupport::Concern
  included do
    has_many :events
  end

# This method is for different type of event to generate their own event.
  def event_content()
  end

  def create_event(creator, action_type , event_content)
    event = Event.create(creator_id: creator.id, creator_name: creator.name, 
      resource_type: self.class.name, action_type: action_type, 
      project_id: self.project_id, content: event_content.to_json)
  end

end