class Moderating < ApplicationRecord
  belongs_to :user
  belongs_to :sub_reddit
end
