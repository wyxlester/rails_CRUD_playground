class Profile < ApplicationRecord
  has_many :books
  has_many :testimonials, dependent: :destroy
  has_one_attached :photo

  validates :name, :age, :email, presence: true
end
