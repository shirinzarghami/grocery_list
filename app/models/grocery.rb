class Grocery < ActiveRecord::Base
  validates :name, presence: true
  has_many :category_groceries
  has_many :categories, through: :category_groceries
end
