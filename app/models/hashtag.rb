class Hashtag < ApplicationRecord
  has_many :user_hashtag_categories
  has_many :users, through: :user_hashtag_categories
  has_many :categories, through: :user_hashtag_categories
end
