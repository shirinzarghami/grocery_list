class Grocery < ActiveRecord::Base
  validates :name, presence: true
  has_many :category_groceries
  has_many :categories, through: :category_groceries
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
