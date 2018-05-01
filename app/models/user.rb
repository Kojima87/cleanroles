class User < ApplicationRecord
  def password=(row_password)
    if row_password.kind_of?(String)
      self.password_digest = BCrypt::Password.create(row_password)
    elseif row_password.nil?
      self.password_digest = nil
    end
  end
#  has_secure_password
end
