class Post < ApplicationRecord
  has_many :comments, dependant: :destroy
end
