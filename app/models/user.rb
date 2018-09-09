class User < ActiveRecord::Base
  has_secure_password

  validates :username, :presence => true

  def deposit(amount)
    self.balance += amount
  end

  def withdrawl(amount)
    self.balance -= amount if current_user.balance > amount
  end
end
