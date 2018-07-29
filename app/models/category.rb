class Category < ApplicationRecord
  has_many :user_hashtag_categories, dependent: :destroy
  has_many :users, through: :user_hashtag_categories
  has_many :hashtags, through: :user_hashtag_categories

  before_validation :titleize_name

  scope :alphabetical, -> { order(:name) } 
  scope :filter_by_jurisdiction, ->(jurisdiction_id) { where(jurisdiction_id: jurisdiction_id) if jurisdiction_id.present?}

  def titleize_name
    self.name = name.titleize
  end
end
