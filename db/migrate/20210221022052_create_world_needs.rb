class CreateWorldNeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :world_needs do |t|
      t.string :content
      t.references :worksheet, foreign_key: true

      t.timestamps
    end
  end
end
