class Contract < ActiveRecord::Base
  belongs_to :person
  belongs_to :post

  validates :person, presence: true
  validates :post, presence: true
  validates :person_id, presence: true
  validates :post_id, presence: true
  validates :salary, numericality: {allow_nil: false}

  def Contract.add_five_percent()
    Contract.update_all("salary = salary * 105 / 100")
  end
end
