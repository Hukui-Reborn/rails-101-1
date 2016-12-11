class Group < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  validates :title, presence: true
  has_many :group_relastionships
  has_many :members, through: :group_relastionships, source: :user
end
