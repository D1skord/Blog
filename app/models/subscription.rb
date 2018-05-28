class Subscription < ApplicationRecord
  scope :daily, -> { where(digest_type: 0).first }

  def self.send_daily
    User.daily.each { |user| EventMailer.digest_daily(user).deliver_now }
  end
end
