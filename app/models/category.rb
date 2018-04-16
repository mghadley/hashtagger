class Category < ApplicationRecord
  has_many :user_hashtag_categories, dependent: :destroy
  has_many :users, through: :user_hashtag_categories
  has_many :hashtags, through: :user_hashtag_categories

  before_save :titleize_name

  def titleize_name
    self.name = name.titleize
  end
end
