class Page < ApplicationRecord

  extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]

    private
    def should_generate_new_friendly_id?
      slug.nil? || title_changed?
    end
end
