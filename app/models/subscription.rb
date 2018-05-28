class Subscription < ApplicationRecord
  scope :daily, -> { where(digest_type: 0).first }
  scope :weekly, -> { where(digest_type: 1) }

  def self.send_daily
    User.daily.each { |user| EventMailer.digest_daily(user).deliver_now }
  end

  def self.send_weekly
    User.weekly.each { |user| EventMailer.digest_weekly(user).deliver_now }
  end

  def self.confirmation_percent
    ((User.daily.confirmed.count * 1.0) / User.daily.count * 100).round(0)
  end
end
