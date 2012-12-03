class SchoolYear < ActiveRecord::Base
  attr_accessible :semestre, :value

  has_many :projects

  validates_presence_of :value, :semestre

  validates_uniqueness_of :semestre, :scope => :value

end
