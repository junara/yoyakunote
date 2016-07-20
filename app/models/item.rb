class Item < ActiveRecord::Base
  validates :name, length: { maximum: 20 }, presence: true
  validates :message, length: { maximum: 500 }, presense: false
  validates :uuid, length: { maximum: 255 }, uniqueness: true, presence: true

  has_many :reservations
  has_many :matchings

  def to_param
    uuid
  end
end
