class Person < ActiveRecord::Base
  has_many :contracts
  has_many :posts, through: :contracts

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :birthday, presence: true
  validates :sex, inclusion: {in: ['м', 'ж'], allow_blank: false} 
end
