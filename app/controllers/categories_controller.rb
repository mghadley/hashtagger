class CategoriesController < ApplicationController
  def index
    @categories = current_user.categories.includes(:hashtags).alphabetical.uniq
    @user_hash_cat = current_user.user_hashtag_categories.new
  end

  def remove_hashtag
    
  end
end
