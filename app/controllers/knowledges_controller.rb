class KnowledgesController < ApplicationController
  def show
    @knowledge = Knowledge.find_by(uuid: params[:uuid])
  end
end
