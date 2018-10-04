class Teacher < ApplicationRecord
    has_many :students
    has_one :profile
    has_one :cohort

    after_create :create_profile

    def create_profile
        Profile.create(
            teachers_id: self.id,
            )
    end
end
