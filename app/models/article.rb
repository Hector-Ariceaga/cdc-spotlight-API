class Article < ApplicationRecord
  validates :title, :description, :author, :url, presence: true
end
