class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :lockable, :timeoutable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates_presence_of :email
  has_and_belongs_to_many :projects 
  has_many :orders
  has_many :rights, through: :orders
  def to_s
    self.nickname
  end
end
