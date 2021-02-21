class CreateLoves < ActiveRecord::Migration[5.2]
  def change
    create_table :loves do |t|
      t.string :content
      t.references :worksheet, foreign_key: true

      t.timestamps
    end
  end
end
