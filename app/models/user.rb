class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :nickname
  validates_presence_of :nickname

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

end
