class CreateRecruiters < ActiveRecord::Migration[6.1]
  def change
    create_table :recruiters do |t|
      t.string :name
      t.integer :age
      t.integer :experience
      t.string :gender
    end
  end
end