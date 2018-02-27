class Topic < ApplicationRecord
  has_many :posts
  has_many :sponsored_post

  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 15 }, presence: true
end
