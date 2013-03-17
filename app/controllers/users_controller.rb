class UsersController < ApplicationController

  def index
    @users = User.all
    @users_grp = UserGroup.all
  end

  def show
    @user = User.find(params[:id])
    @users_grp = UserGroup.all
  end

  def new
    @user = User.new
    @users_grp = UserGroup.all
  end

  def edit
    @user = User.where(id: params[:id]).first
    @users_grp = UserGroup.all
  end

  def create
    @user = User.create(params[:user])
    if @user.errors.empty?
      redirect_to users_path(@user)
    else
      render "new"
    end
  end

  def update
    @user = User.where(id: params[:id]).first
    @user.update_attributes(params[:user])
    if @user.errors.empty?
      redirect_to user_path(@user)
    else
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to action: 'index'
  end

  def addgroup
    @user = User.find(params[:id])
    @user.user_groups << UserGroup.find(params[:grp])
    redirect_to action: 'index'
  end

  def delgroup
    @user = User.find(params[:id])
    @user.user_groups.delete UserGroup.find(params[:grp])
    #redirect_to action: 'index'
    redirect_to :back
  end


end
