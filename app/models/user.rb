class User < ApplicationRecord
  has_many :posts

  validates :name, :age, presence: true
  validates :age, numericality: { only_inteter: true, greater_than_or_equal_to: 12 }
end
