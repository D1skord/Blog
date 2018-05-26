class UsersController < ApplicationController
  def update
    current_user.update digest_type: user_params[:digest_type]
    redirect_to posts_path, success: "Параметры обновлены!"
  end

  private
  def user_params
    params.require(:user).permit(:digest_type)
  end
end
