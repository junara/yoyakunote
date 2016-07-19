class MatchingConversation < ActiveRecord::Base
  has_many :matching_conversations
  def to_param
    uuid
  end
end
