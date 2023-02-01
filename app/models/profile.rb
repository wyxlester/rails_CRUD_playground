class Profile < ApplicationRecord
  has_many :books
  has_many :testimonials, dependent: :destroy
end
