class MessageField < ActiveRecord::Base
  attr_accessible :conceptual_field_id, :message_id, :name, :projection

  validates_presence_of("conceptual_field_id")
  validates_presence_of("message_id")
  validates_presence_of("name")

  belongs_to :message

end
