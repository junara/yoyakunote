class Matching < ActiveRecord::Base
  has_many :matching_conversations
  belongs_to :item
  belongs_to :user
  def to_param
    uuid
  end
end
