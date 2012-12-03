class Project < ActiveRecord::Base
  attr_accessible :description, :name, :url, :school_year_id #, :user_ids

  has_many :user_projects
  has_many :users, :through => :user_projects

  belongs_to :school_year

  validates_presence_of :school_year_id, :name, :description, :url

  accepts_nested_attributes_for :user_projects

  after_save :update_users

  def update_users
    logger.info ">>>>>> #{self.user_ids}"
  end

end
