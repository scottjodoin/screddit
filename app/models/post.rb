class Post < ApplicationRecord
  belongs_to :sub_reddit
  belongs_to :user
end
