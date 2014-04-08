class Publisher < ActiveRecord::Base
  has_many :projects
  def to_s
    self.brand_name
  end
end
