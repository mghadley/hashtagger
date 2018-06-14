class HashtagsController < ApplicationController
  def index
  end

  def show
  end

  def select
    @categories = current_user.categories.includes(:hashtags).alphabetical.uniq
  end

  def show_block
    @selection = Hashtag.select_block(current_user, params[:categories])
    respond_to do |format|
      format.html {}
      format.js {}
    end
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

  def remove_from_user
    user_hash_cat = UserHashtagCategory.find_by(
                                                 user_id: current_user.id,
                                                 hashtag_id: params[:id],
                                                 category_id: params[:category_id]
                                               )
    user_hash_cat.destroy
    respond_to do |format|
      format.js {
        @categories = current_user.categories.includes(:hashtags).alphabetical.uniq
      }
    end
  end
end
