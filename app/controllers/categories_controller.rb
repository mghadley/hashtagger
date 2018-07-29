class CategoriesController < ApplicationController
  def index
    # @categories = current_user.categories.includes(:hashtags).alphabetical.uniq
    @categories = current_user.categories.alphabetical.uniq
    @user_hash_cat = current_user.user_hashtag_categories.new
  end

  def category_hashtags
    @category = Category.find(params[:id])
    @user_hash_cats = @category.user_hashtag_categories.where(user: current_user).includes(:hashtag)
    render partial: 'category_hashtags'
  end

  def remove_hashtag
    
  end
end
