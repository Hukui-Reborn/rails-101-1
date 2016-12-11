class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :groups
         has_many :posts
         has_many :group_relastionships
         has_many :participated_groups, :through => :group_relastionships, :source => :group
end
