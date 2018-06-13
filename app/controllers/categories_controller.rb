class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:hashtags).all
  end

  def remove_hashtag
    
  end
end
