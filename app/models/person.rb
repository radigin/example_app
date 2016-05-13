class Person < ActiveRecord::Base
  has_many :contracts
  has_many :posts, through: :contracts
  has_many :addresses, inverse_of: :person

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :birthday, presence: true
  validates :sex, inclusion: {in: ['м', 'ж'], allow_blank: false} 

  accepts_nested_attributes_for :addresses, allow_destroy: true

  def Person.year_statistics
    Person.group('extract(year from birthday)').order(
      'extract(year from birthday)').pluck(
      'extract(year from birthday)::integer AS year, count(*) AS count')
    # Person.group("strftime('%Y', birthday)").order("strftime('%Y', birthday)").pluck("strftime('%Y', birthday), count(*)")
  end
end
