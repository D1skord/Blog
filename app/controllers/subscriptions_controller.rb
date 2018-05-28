class SubscriptionsController < ApplicationController
  def send_mail
    Subscription.send_daily
    redirect_to posts_path, success: "Рассылка выполнена!"
  end

  def index
    @subscriptions = Subscription.all
  end

  def show
    @subscription = Subscription.find params[:id]
    @users = User.where(digest_type: @subscription.digest_type)
  end


end




