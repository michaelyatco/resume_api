class AddStudentIdToCapstone < ActiveRecord::Migration[5.0]
  def change
    add_column :capstones, :student_id, :integer
  end
end
