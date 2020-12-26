class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :shops
  has_many :comments  

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d_-]+\z/i.freeze
    validates_format_of :password, with: PASSWORD_REGEX 
     with_options presence: true do
      validates :first_name, :family_name,format: { with: /\A[ぁ-んァ-ン一-龥]/}
      validates :name, :birthday
  end
end