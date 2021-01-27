class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :num_of_employees
      t.string :year_established
    end
  end
end
