class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :title, :content, persence: true
end
