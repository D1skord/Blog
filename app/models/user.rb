class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :daily, -> { where(digest_type: 0) }
  scope :confirmed, -> { where(confirm: true) }

  def admin?
    admin
  end
end
