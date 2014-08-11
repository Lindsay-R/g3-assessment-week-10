class Gif < ActiveRecord::Base
  validates :description, presence: true
  validates :url, presence: true

end