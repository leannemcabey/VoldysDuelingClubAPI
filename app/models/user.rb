class User < ApplicationRecord
  has_many :duels
  validates :username, uniqueness: true

end
