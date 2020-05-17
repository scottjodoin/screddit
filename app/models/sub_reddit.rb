class SubReddit < ApplicationRecord
  has_many :posts
  has_many :users, through: :subscribings
  has_many :users, through: :moderatings
end
