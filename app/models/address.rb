class Address < ActiveRecord::Base
  ATYPES = ['Адрес прописки', 'Адрес регистрации', 'Адрес проживания']

  belongs_to :person, inverse_of: :addresses

  validates :person, presence: true
  validates :index, presence: true, length: {is: 6}
  validates :region, presence: true
  validates :atype, inclusion: {in: (0...ATYPES.size).to_a, allow_blank: false}
end
