class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    # Colocmos essa linha para declarar o modelo de user: Cada user pode ter muitas tarrefas 
    has_many :tasks, dependent: :destroy
end
