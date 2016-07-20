class MatchingConversationsController < ApplicationController
  def create
    @matching_conversation = MatchingConversation.new(matching_conversation_params)
    @matching_conversation[:uuid] = SecureRandom.uuid
    @matching_conversation[:user_id] = session[:user_id]
    flash[:success] = if @matching_conversation.save
                        '入力しました'
                      else
                        '入力できませんでした'
                      end

    redirect_to matching_path(uuid: @matching_conversation.matching.uuid)
  end

  private

  def matching_conversation_params
    params.require(:matching_conversation)
          .permit(:name, :message, :matching_id, :uuid, :user_id)
  end
end
