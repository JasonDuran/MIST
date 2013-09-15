class CreateMessageFields < ActiveRecord::Migration
  def change
    create_table :message_fields do |t|
      t.integer :message_id
      t.string :projection
      t.string :name
      t.integer :conceptual_field_id

      t.timestamps
    end
  end
end
