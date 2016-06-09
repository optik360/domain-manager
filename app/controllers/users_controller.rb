class UsersController < ApplicationController
  
  before_action :authenticate_user!
  
  expose :users
  expose :user, attributes: :user_params
  
  responders :flash
  
  respond_to :html
  
  def create
    User.create!(user_params)
    respond_with user, location: users-path
  end
  
  def destroy
    user.destroy
    respond_with user, location: users_path
  end
  
  private

  def user_params
    params.require(:user).permit!
  end
end