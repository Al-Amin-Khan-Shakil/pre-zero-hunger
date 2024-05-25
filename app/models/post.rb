class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, :description, presence: true
  validates :title, length: { maximum: 250 }
end
