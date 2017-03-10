class AddStudentIdToEducation < ActiveRecord::Migration[5.0]
  def change
    add_column :educations, :student_id, :integer
  end
end
