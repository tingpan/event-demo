class Event < ActiveRecord::Base
  belongs_to :project
  
  validates :project_id,        :presence => true

  def event_content
    JSON.parse(self.content)
  end

  def event_content=(content_dict)
    self.content = content_dict.to_json
    self.save
  end
end
