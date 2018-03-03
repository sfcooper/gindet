class Event < ApplicationRecord
  # This method associates the attribute ":avatar" with a file attachment
has_attached_file :picture, styles: {
  thumb: '100x100>',
  square: '200x200#',
  medium: '300x300>',
  large: '400x400'
}

# Validate the attached image is image/jpg, image/png, etc
validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/


  extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]

private
  def should_generate_new_friendly_id?
    slug.nil? || title_changed?
  end
end
