class KnowledgesController < ApplicationController
  before_action :set_knowledge, only: [:show, :edit, :update, :inform]
  def show
  end
  def new
  end
  def update
    if @knowledge.update_attributes(knowledge_params)
      flash[:success] = 'コツ情報が更新されました'
      redirect_to knowledge_path(uuid: @knowledge.uuid)
    else
      flash[:success] = 'Update failed'
      render edit_knowledge_path(uuid: @knowledge.uuid)
    end
  end

  def create
    @knowledge = Knowledge.new(knowledge_params)
    @knowledge[:uuid] = SecureRandom.uuid
    if @knowledge.save
      flash[:success] = 'コツ作成完了！'
      redirect_to knowledge_path(uuid: @knowledge.uuid)
    else
      flash[:success] = '入力失敗！'
      render edit_knowledge_path(uuid: @knowledge.uuid)
    end
  end

  def edit
  end

  private

  def set_knowledge
    @knowledge = Knowledge.find_by(uuid: params[:uuid])
  end

  def knowledge_params
    params.require(:knowledge).permit(:name, :message, :uuid, :webimage_url, :user_id, :item_id)
  end
end
