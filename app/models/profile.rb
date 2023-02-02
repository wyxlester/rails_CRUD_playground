class Profile < ApplicationRecord
  has_many :books
  has_many :testimonials, dependent: :destroy
  has_one_attached :photo
  has_one_attached :cv

  validates :name, :age, :email, presence: true
end
