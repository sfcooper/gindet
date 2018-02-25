class Gin < ApplicationRecord
  belongs_to :distillery, inverse_of: :gins
  accepts_nested_attributes_for :distillery
  acts_as_punchable



  has_attached_file :pic, styles: {
  thumb: '100x100>',
  square: '200x200#',
  medium: '300x300>'
}

# Validate the attached image is image/jpg, image/png, etc
validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/

extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]




  private
  def should_generate_new_friendly_id?
    slug.nil? || name_changed?
  end

end
