class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :location
      t.integer :rate

      t.timestamps
    end
  end
end
