class Distillery < ApplicationRecord
  has_many :gins, inverse_of: :distillery



end
