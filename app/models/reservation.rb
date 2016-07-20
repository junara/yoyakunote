class Reservation < ActiveRecord::Base
  validates :name, length: { maximum: 20 }, presence: true
  validates :message, length: { maximum: 500 }, presence: false

  belongs_to :item
  belongs_to :user
  def to_param
    uuid
  end
end
