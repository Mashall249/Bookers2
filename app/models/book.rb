class Book < ApplicationRecord

  before_action :is_matching_login_user, only: [:edit, :update]

  has_one_attached :image
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true

end