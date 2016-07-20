class ItemSearchForm
  include ActiveModel::Model

  attr_accessor :name, :manufacture_cn, :manufacture_name

  def search
    search_model = Item
    # search_model = search_model.where(name: name) if name.present?
    search_model = search_model.where("name like ?", "%#{name}%") if name.present?
    search_model = search_model.where(manufacture_name: manufacture_name) if manufacture_name.present?
    search_model = search_model.where(manufacture_cn: manufacture_cn) if manufacture_cn.present?
    search_model
  end

  def simple_search
    search_model = Item
    search_model = search_model.where(name: name) if name.present?
    # search_model = search_model.where(manufacture_name: name) if name.present?
    # search_model = search_model.where(manufacture_cn: name) if name.present?
    binding.pry
    search_model
  end
end
