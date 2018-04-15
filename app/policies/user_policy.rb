class UserPolicy < ApplicationPolicy
  def show?
    @user == current_user
  end
end