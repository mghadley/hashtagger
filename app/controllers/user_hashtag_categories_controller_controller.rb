class UserHashtagCategoriesControllerController < ApplicationController
  def destroy
    @user_hash_cat.destroy
    respond_to do |format|
      format.js {}
    end
  end

  private

  def set_instance
    @user_hash_cat = UserHashtagCategory.find(params[:id])
  end
end
