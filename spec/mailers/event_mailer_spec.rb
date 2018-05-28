require 'rails_helper'

describe EventMailer, type: :mailer do
    it 'should have correct from' do
        subscription = Subscription.create digest_type: 0, message: "Daily"
        user = User.create email: "user1@mail.ru", digest_type: 0, password: "123456", password_confirmation: "123456"
        email = EventMailer.digest_daily(user)
        expect(email.to.last).to eq(user.email)
    end
end