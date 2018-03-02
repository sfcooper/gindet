class Distillery < ApplicationRecord
  has_many :gins, inverse_of: :distillery

  extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]

    private
    def should_generate_new_friendly_id?
      slug.nil? || name_changed?
    end

end
