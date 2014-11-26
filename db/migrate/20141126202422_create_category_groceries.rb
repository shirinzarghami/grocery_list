class CreateCategoryGroceries < ActiveRecord::Migration
  def change
    create_table :category_groceries do |t|
      t.integer :category_id
      t.integer :grocery_id

      t.timestamps
    end
  end
end
