class User < ActiveRecord::Base
      before_validation :set_provider
        def set_provider
         self[:provider] = "email" if self[:provider].blank?
        end

      before_validation :set_uid
        def set_uid
          self[:uid] = self[:email] if self[:uid].blank? && self[:email].present?
        end

  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :confirmable,
         :timeoutable
end
