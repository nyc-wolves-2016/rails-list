class Category < ApplicationRecord
  has_many :articles

  validates :title, presence: true, uniqueness: true
end
