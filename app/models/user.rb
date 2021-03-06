class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_hashtag_categories, dependent: :destroy
  has_many :hashtags, through: :user_hashtag_categories
  has_many :categories, through: :user_hashtag_categories
end
