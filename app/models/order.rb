class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :right
end
