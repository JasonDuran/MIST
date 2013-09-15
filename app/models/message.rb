class Message < ActiveRecord::Base
  attr_accessible :name, :standard_id

  validates_presence_of("name")
  validates_presence_of("standard_id")
  validates_uniqueness_of(:name, :scope=> :standard_id)

  belongs_to :Standard
end
