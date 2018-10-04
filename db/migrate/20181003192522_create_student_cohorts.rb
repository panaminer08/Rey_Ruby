class CreateStudentCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :student_cohorts do |t|
      t.references :student
      t.references :cohort

      t.timestamps
    end
  end
end
