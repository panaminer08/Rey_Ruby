class Student < ApplicationRecord
    has_many :teachers
    has_one :profile
    has_many :cohorts,  through: :student_cohorts
    has_many :student_cohorts


    after_create :create_profile
    after_destroy :destroy_profile

     def create_profile
     Profile.create(student_id: self.id)
     end
end
