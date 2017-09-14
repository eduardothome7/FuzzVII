class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def delete
  end

  def destroy
  end

  def update
  end

  def show
  end

  def authenticate
    @user = User.find_by(email: $_POST['login_email'])
    
  end
end
