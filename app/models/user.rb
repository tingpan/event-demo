class User < ActiveRecord::Base
  belongs_to :team
  has_many :accesses,           :dependent => :destroy
  has_many :projects,           :through => :accesses

  validates :name,              :presence => true
end
