class User < ApplicationRecord
  rolify


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  role = %w{admin user}

  def admin?
    role == 'admin'
  end
  def user?
    role == 'user'
  end

end
