class Comment < ActiveRecord::Base

  include Eventable

  belongs_to :commentable, :polymorphic => true
  belongs_to :creator, class_name: "User", :foreign_key => "creator_id"

  def event_content
    event_content = {
      content: content,
      commentable_id: commentable_id,
      commentable_type: commentable_type
    }
  end
end
