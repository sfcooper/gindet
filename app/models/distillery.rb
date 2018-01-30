class Distillery < ApplicationRecord
  has_many :gins
  accepts_nested_attributes_for :gins


end
