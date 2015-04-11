# TODO there is TodoList in Tower.im.
class Todo < ActiveRecord::Base

  include Eventable

  belongs_to :project
  has_many :comments, :as => :commentable

  def event_content
    event_content = {
      title: title,
      content: content,
      due: due,
      worker_id: worker_id,
      worker_name: User.find(worker_id).name,
      status: status
    }
  end
end
