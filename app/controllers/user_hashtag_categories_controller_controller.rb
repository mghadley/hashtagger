class UserHashtagCategoriesControllerController < ApplicationController
  before_action :set_instance, only: [:edit]
  before_action :set_instance_by_id, only: [:update]

  def destroy
    @user_hash_cat.destroy
    respond_to do |format|
      format.js {}
    end
  end

  def edit
    respond_to do |format|
      format.js {}
    end
  end

  def update
    if @user_hash_cat.update(user_hash_cat_params)
    else
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
