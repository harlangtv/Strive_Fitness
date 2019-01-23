class User < ApplicationRecord
  has_many :goals
  has_many :tasks, through: :goals

  has_secure_password

  # def password
  #   @password
  # end
  #
  # def password=(password)
  #   @password
  # end

end
