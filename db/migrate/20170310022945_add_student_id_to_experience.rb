class AddStudentIdToExperience < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :student_id, :integer
  end
end
