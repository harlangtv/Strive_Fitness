class User < ApplicationRecord
  has_many :goals
  has_many :tasks, through: :goals

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
