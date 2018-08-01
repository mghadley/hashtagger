class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :hashtag_count

  def hashtag_count
    view_context.current_user.user_hashtag_categories.where(category: object).count
  end
end