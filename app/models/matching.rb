class Matching < ActiveRecord::Base
  belongs_to :matching

  def to_param
    uuid
  end
end
