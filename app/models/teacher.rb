class Teacher < ApplicationRecord
    has_many :students
    has_one :dashboard
    has_one :cohort

    after_create :create_dashboard
    after_destroy :destroy_dashboard

    def create_dashboard
        Dashboard.create(
            teacher_id: self.id,
            )
    end
end
