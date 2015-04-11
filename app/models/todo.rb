# TODO there is TodoList in Tower.im.
class Todo < ActiveRecord::Base

  include Eventable

  belongs_to :project
  has_many :comments,   :as => :commentable
  belongs_to :creator,  class_name: "User", :foreign_key => "creator_id"
  belongs_to :worker,   class_name: "User", :foreign_key => "creator_id"

  def event_content
    event_content = {
      title: title,
      content: content,
      due: due,
      worker_id: worker_id,
      worker_name: worker.name,
      status: status
    }
  end
end
