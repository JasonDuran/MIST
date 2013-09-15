class CreateConceptualEntities < ActiveRecord::Migration
  def change
    create_table :conceptual_entities do |t|
      t.string :name

      t.timestamps
    end
  end
end
