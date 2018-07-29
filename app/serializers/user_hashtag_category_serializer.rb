class UserHashtagCategorySerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :hashtag
end
