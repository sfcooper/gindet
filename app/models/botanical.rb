class Botanical < ApplicationRecord
  has_many :gins_botanical
  has_many :gins, through: :gins_botanical

  extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]

  private
  def should_generate_new_friendly_id?
    slug.nil? || name_changed?
  end
  
end
