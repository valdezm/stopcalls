class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  has_one :testprofile2
  has_many :orders
  has_many :violation_lines
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  def role?(role)
   return !!self.roles.find_by_name(role.to_s)
 end
before_create :setup_role
private
def setup_role
  if self.role_ids.empty?
    self.role_ids = [2]
  end
end
end
