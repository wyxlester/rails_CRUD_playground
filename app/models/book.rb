class Book < ApplicationRecord
  belongs_to :profile

  validates :title, :year, :profile, presence: true
end
