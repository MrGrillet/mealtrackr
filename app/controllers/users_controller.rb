class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [ :show, :edit, :update, :destroy]

  def welcome
  end

  def dashboard
    @user = User.find(current_user.id)
    @feelings = Feeling.all
    @meals = Meal.where(user: @user)
  end

  def index
    @users = User.all
  end

  def show
    # @user = User.find(current_user)
    @feelings = Feeling.all
    @meals = Meal.where(user: @user)
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Your profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :is_admin,
      :first_name,
      :last_name,
      :username,
      :goal,
      :biography,
      :profile_visibility,
      :website,
      :notifications,
      :image
    )
  end
end
