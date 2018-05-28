class EventMailer < ApplicationMailer
  default from: "blog@mail.ru"



  def digest_daily(user)
    @posts = Post.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
    @subscription = Subscription.daily
    @user = user
    mail to: user.email, subject: "Ежедневная рассылка"
  end

  def digest_weekly
    @posts = Post.where(created_at: Date.today-7..Date.today)
    mail to: User.all.collect(&:email), subject: "Еженедельная рассылка"
  end

end
