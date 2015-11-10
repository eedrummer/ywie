class Patient < ActiveRecord::Base
  extend Enumerize

  validates :first_name, :last_name, :birthdate, :gender, presence: true
  enumerize :gender, in: [:male, :female]

  has_many :conditions

  after_initialize do
    if new_record?
      self.birthdate ||= Date.new(1955, 11, 11)
    end
  end
end
