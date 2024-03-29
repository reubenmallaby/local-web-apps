class UserProject < ActiveRecord::Base
  attr_accessible :project_id, :user_id

  belongs_to :user
  belongs_to :project

  validates_uniqueness_of :project, :scope => :user

end
