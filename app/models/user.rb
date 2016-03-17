class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :permissions
  has_many :roles, through: :permissions     

  #after_save :setup_user_role

  def role?(role)
    self.roles.pluck(:name).include?(role)
  end

  #def setup_user_role
    #user=User.last
     #user.roles << Role.where("id=?",self.role)
  #end


  #before_create :assign_role
  #def assign_role
    #if User.count == 0
      #self.role = "admin"
    #else
      #self.role = "guest"
    #end
  #end

end
