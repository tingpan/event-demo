module Eventable
  extend ActiveSupport::Concern
  included do
    has_many :events
  end

# This method is for different type of event to generate their own event.
  def event_content()
  end

  def create_event(creator, event_content):
    event = Event.create(creator_id: creator.id, resource_type: self.class.name, 
      project_id: self.project_id, content: event_content)
  end

end