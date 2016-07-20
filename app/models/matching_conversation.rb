class MatchingConversation < ActiveRecord::Base
  belongs_to :matching
  belongs_to :user
  def to_param
    uuid
  end
end
