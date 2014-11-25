class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.string :name
      t.integer :number
      t.string :category
      t.text :explanation
      t.boolean :bought

      t.timestamps
    end
  end
end
