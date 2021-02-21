class CreateGoodAts < ActiveRecord::Migration[5.2]
  def change
    create_table :good_ats do |t|
      t.string :content
      t.references :worksheet, foreign_key: true

      t.timestamps
    end
  end
end
