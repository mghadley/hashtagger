class UserHashtagCategoriesController < ApplicationController
  before_action :set_instance, only: [:edit]
  before_action :set_instance_by_id, only: [:update, :destroy]

  def index
    @user_hash_cats = current_user.user_hashtag_categories.joins(:hashtag).where(category_id: params[:category_id]).order('hashtags.name')
    respond_to do |format|
      format.json {
        render json: @user_hash_cats
      }
    end
  end

  def edit
    respond_to do |format|
      format.js {}
    end
  end

  def create
    hashtag = Hashtag.find_or_create_by(name: params[:user_hashtag_category][:hashtag][:name])
    category = Category.find_or_create_by(name: params[:user_hashtag_category][:category][:name].titleize)
    @user_hash_cat = current_user.user_hashtag_categories.find_or_initialize_by(category: category, hashtag: hashtag)
    if @user_hash_cat.save
      redirect_to categories_path
    else
      
    end
  end

  def update
    hashtag = params[:hashtag].present? ? Hashtag.find_or_create_by(name: params[:hashtag][:name]) : @user_hash_cat.hashtag
    respond_to do |format|
      if @user_hash_cat.update(hashtag: hashtag)
        format.json {
          render json: @user_hash_cat
        }
      else
        format.json {
          render json: @user_hash_cat.errors, status: :unprocessable_entity
        }
      end
    end
  end

  def destroy
    @category = @user_hash_cat.category
    @user_hash_cat.destroy
    respond_to do |format|
      format.js {
        @user_hash_cats = @category.user_hashtag_categories.where(user: current_user)
      }
      format.json {
        render json: true
      }
    end
  end

  private

  def set_instance
    @user_hash_cat = UserHashtagCategory.find_by(
      user: current_user,
      category_id: params[:category_id], 
      hashtag_id: params[:hashtag_id]
    )
  end

  def set_instance_by_id
    @user_hash_cat = UserHashtagCategory.find(params[:id])
  end
end

