class Comment < ApplicationRecord
  belongs_to :article

  validates :content, :review, presence: true
  validates :review, inclusion: [true, false]
end
