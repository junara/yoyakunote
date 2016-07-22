class Knowledge < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
  def to_param
    uuid
  end
end
