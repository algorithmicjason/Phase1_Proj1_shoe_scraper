class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :skillset
      t.string :desired_salary
      t.references :contract
      t.references :company
    end
  end
end
