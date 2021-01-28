class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.references :recruiter
      t.references :candidate
      t.references :company

      t.timestamps
    end
  end
end
