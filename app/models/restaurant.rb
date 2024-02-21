class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'french', 'belgian', 'italian', 'japanese']}

  CATEGORY = ['chinese', 'french', 'belgian', 'italian', 'japanese']
end
