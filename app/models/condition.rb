class Condition < ActiveRecord::Base
  extend Enumerize
  belongs_to :patient

  validates :name, :onset, presence: true

  enumerize :name, in: [:hypertension, :stroke, :diabetes]
end
