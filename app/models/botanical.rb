class Botanical < ApplicationRecord
  has_many :gins_botanical
  has_many :gins, through: :gins_botanical
end
