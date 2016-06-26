class Reservation < ActiveRecord::Base
  validates :name, length: { maximum: 20 }, presence: true
  validates :message, length: { maximum: 500 }, presence: false

  belongs_to :item
  def to_param
    uuid
  end
end
