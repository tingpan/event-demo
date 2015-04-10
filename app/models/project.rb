class Project < ActiveRecord::Base
  belongs_to :team
  has_many :accesses
  has_many :users, 					:through => :accesses
end
