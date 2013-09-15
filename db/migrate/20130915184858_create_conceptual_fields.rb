class CreateConceptualFields < ActiveRecord::Migration
  def change
    create_table :conceptual_fields do |t|
      t.string :name
      t.string :datatype
      t.integer :conceptual_entity_id

      t.timestamps
    end
  end
end
