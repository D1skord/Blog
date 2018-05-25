class EventMailer < ApplicationMailer
  default from: "blog@mail.ru"

  def digest

    mail to: User.all.collect(&:email), subject: "test"
  end

  def digest_daily
    @posts = Post.where(created_at: Date.yesterday..Date.today+1)
    mail to: User.all.collect(&:email), subject: "Ежедневная рассылка"
  end
end
