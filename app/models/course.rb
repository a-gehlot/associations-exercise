class Course < ApplicationRecord
    has_many :enrollments
    class_name: 'Enrollment',
    foreign_key: 'student_id'

    has_many :enrolled_studnets,
    through: :enrollments,
    source: :user

    belongs_to :prerequisite
    class_name: 'Course'
    foreign_key: 'prereq_id'
    optional: true

    belongs_to :instructor
    class_name: 'User'
    foreign_key: 'instructor_id'
end
