class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :position
      t.string :description
      t.integer :salary
      t.datetime :date_posted
      
    end
  end
end
