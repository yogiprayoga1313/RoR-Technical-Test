class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:Author, :moderator, :admin]
  after_initialize :set_default_role, :if => :new_record?
  validates :username, presence: true, uniqueness: true

  has_many :products  # Menambahkan relasi has_many ke model Product

  def set_default_role
    self.role ||= :user
  end
end
