class Category < ActiveRecord::Base
 validates :name, presence: true
  has_many :category_groceries
  has_many :groceries, through: :category_groceries
end
