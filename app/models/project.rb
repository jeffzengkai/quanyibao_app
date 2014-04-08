class Project < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :rights
  has_many :orders, through: :rights
  belongs_to :publisher
  belongs_to :administrator
end
