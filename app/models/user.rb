# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable, :omniauthable

  def self.find_for_oauth(access_token, signed_in_resource=nil)
    data = access_token.info

    user = User.where(:email => data["email"]).first


    if user.blank?
      user = User.new(email: data["email"], password: Devise.friendly_token[0,20])

      user.save
    end
    user
  end
end
