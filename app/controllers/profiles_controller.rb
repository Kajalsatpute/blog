class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(profile_params)
      redirect_to edit_profile_path, notice: 'Profile successfully updated.'
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:user).permit(:avatar, :city, :state, :country, :phone, :gender)
  end
end
