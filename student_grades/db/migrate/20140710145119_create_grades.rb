class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :name
      t.float :score
      t.string :subject_id
      t.references :student, index: true

      t.timestamps
    end
  end
end
