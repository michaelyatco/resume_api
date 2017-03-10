class AddStudentIdToSkill < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :student_id, :integer
  end
end
