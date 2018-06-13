class CategoriesController < ApplicationController
  def index
    @categories = current_user.categories.includes(:hashtags).alphabetical.uniq
  end

  def remove_hashtag
    
  end
end
