class SubscriptionsController < ApplicationController
  def send_mail
    EventMailer.digest_daily.deliver_now
    redirect_to posts_path, success: "Рассылка выполнена!"
    #render plain: "test"
  end

  def index
    @subscriptions = Subscription.all
  end
end
