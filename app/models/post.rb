class Post < ActiveRecord::Base
  has_many :contracts
  has_many :people, through: :contracts

  validates :name, presence: true
  validates :full_name, presence: true, uniqueness: true
end
