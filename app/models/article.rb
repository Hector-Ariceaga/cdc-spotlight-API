class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :description, :author, :content, presence: true
end
