class HashtagsController < ApplicationController
  def index
  end

  def show
  end

  def select
    @categories = current_user.categories.includes(:hashtags).uniq
  end

  def show_block
    @selection = Hashtag.select_block(current_user, params[:categories])
  end

  def new
  end

  def create
    hashtag = Hashtag.find_or_create_by(name: params[:hashtag][:name])
    category = Category.find_or_create_by(name: params[:category][:name].titleize)
    @user_hashtag_category = UserHashtagCategory.find_or_create_by(
      user: current_user,
      hashtag: hashtag,
      category: category
    )
    redirect_to select_hashtags_path
  end

  def edit
  end
end
