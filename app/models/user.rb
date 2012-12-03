class User < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email, :password

  include Clearance::User

  has_many :user_projects
  has_many :projects, :through => :user_projects

  validates_presence_of :firstname, :lastname, :email

  def name
    self.firstname + " " + self.lastname
  end

end
