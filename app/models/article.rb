class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :description, :author, :url, presence: true
end
