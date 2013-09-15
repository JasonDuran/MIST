class Standard < ActiveRecord::Base
  attr_accessible :name, :version

  validates_presence_of("name")
  validates_presence_of("version")

end
