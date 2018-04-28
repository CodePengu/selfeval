class CreateTestrec < ActiveRecord::Migration[5.1]
  def change
    create_table :testrecs do |t|
      t.string :email
      t.text :correctness
      t.text :answers
      t.text :mark
    end
  end
end
