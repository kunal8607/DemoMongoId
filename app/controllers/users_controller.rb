class UsersController < ApplicationController
  def index
   @users = User.all
  end

  def new
   @user = User.new
  end

  def show
    @user = User.find(params[:id])
    render :json => @user
  end

  def create
    user = User.new(params[:user])
    user.save
    redirect_to root_path
  end

  def new_profile
    @user = User.find(params[:id])
    @profile = @user.build_profile
  end

  def create_profile
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    #@profile = @user.build_profile(params[:profile])
    #@profile.save
    redirect_to root_path
  end

  def edit_profile
    @user = User.find(params[:id])
    @profile = @user.profile
  end

  def update_profile
    @user = User.find(params[:id])
    @profile = @user.profile
    @profile.update_attributes(params[:profile])
    redirect_to root_path
  end
end
