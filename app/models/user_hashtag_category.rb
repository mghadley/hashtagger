class UserHashtagCategory < ApplicationRecord
  belongs_to :user
  belongs_to :hashtag
  belongs_to :category

  attr_accessor :hashtag_name, :category_name

  def set_names
  end
end
