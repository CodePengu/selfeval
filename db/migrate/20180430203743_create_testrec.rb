class CreateTestrec < ActiveRecord::Migration[5.1]
  def change
    create_table :testrecs do |t|
      t.integer :userid
      t.text :correctness
      t.text :answers
      t.text :mark
    end
  end
end
