class User < ApplicationRecord
  has_many :comments
  has_many :posts
  has_many :sub_reddits, through: :subscribings
  has_many :sub_reddits, through: :moderatings
end
