class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
    t.string :name
    t.integer :start_date
    t.integer :end_date
    t.references :teachers
    t.bigint :course_id
    t.datetime :created_at, null: false
    t.datetime :updated_at, null: false
    

      t.timestamps
    end
  end
end
