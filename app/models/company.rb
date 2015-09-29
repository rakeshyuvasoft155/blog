class Company < ActiveRecord::Base
has_many :users, dependent: :destroy
validates :name, presence: true
self.per_page = 5
has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
	