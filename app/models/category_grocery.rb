class CategoryGrocery < ActiveRecord::Base
  belongs_to :category
  belongs_to :grocery
end
