class CreateUniversityStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :university_students do |t|
      t.string :name
      t.string :faculty
      t.string :grade

      t.timestamps
    end
  end
end
