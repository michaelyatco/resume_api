class CreateCapstones < ActiveRecord::Migration[5.0]
  def change
    create_table :capstones do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :screenshot

      t.timestamps
    end
  end
end
