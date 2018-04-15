class UserPolicy < ApplicationPolicy
  def show?
    # @user == current_user
    true
  end
end