class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates_presence_of :description, :title, :price
  validates_format_of :price, :with => /\A\d+(?:\.\d{0,2})?\z/

  def self.average_rating
    product.ratings.average(:rating)
  end
end
