class UsersController < ApplicationController
  
  before_action :authenticate_user!
  skip_before_filter :verify_authenticity_token  
  
  expose :users
  expose :user, attributes: :user_params
  
  responders :flash
  
  respond_to :html
  
  def create
    User.create!(user_params)
    respond_with user, location: users_path
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