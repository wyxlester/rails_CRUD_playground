class Testimonial < ApplicationRecord
  belongs_to :profile

  validates :content, :profile, presence: true
end
