class Subscription < ApplicationRecord
  scope :daily, -> { where(digest_type: 0).first }

  def self.send_daily
    User.daily.each { |user| EventMailer.digest_daily(user).deliver_now }
  end

  def self.confirmation_percent
    (User.daily.confirmed.count * 1.0) / User.daily.count * 100
  end
end
