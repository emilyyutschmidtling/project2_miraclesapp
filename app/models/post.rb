class Post < ActiveRecord::Base

  # validates :user_id, presence: true

  belongs_to :user
    # accepts_nested_attributes_for :user
  has_many :comments


end
