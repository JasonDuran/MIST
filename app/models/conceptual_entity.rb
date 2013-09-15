class ConceptualEntity < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of("name")
  validates_uniqueness_of("name")

  has_many :conceptual_fields, dependent: :destroy
end
