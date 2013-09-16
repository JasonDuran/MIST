class ConceptualField < ActiveRecord::Base
  attr_accessible :conceptual_entity_id, :datatype, :name

  validates_presence_of("datatype")
  validates_presence_of("name")
  validates_presence_of("conceptual_entity_id")



  belongs_to :conceptual_entity
end
