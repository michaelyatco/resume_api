class AddApiKeyandEmailattributestoStudentModel < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :api_key, :string
  end
end
