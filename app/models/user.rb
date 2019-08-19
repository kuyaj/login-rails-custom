class User < ApplicationRecord
  #gives user model authentication methods via bcrpyt
  has_secure_password
end




