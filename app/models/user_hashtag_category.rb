class UserHashtagCategory < ApplicationRecord
  belongs_to :user
  belongs_to :hashtag
  belongs_to :category
end
