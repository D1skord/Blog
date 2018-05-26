class EventMailer < ApplicationMailer
  default from: "blog@mail.ru"



  def digest_daily
    @posts = Post.where(created_at: Date.yesterday..Date.today+1)
    mail to: User.all.collect(&:email), subject: "Ежедневная рассылка"
  end

  def digest_weekly
    @posts = Post.where(created_at: Date.today-7..Date.today)
    mail to: User.all.collect(&:email), subject: "Еженедельная рассылка"
  end

end
