=begin
    email:string
    password:string
    --- has_secure_password : ---
    password:string virtual attribute
    password_confirmation:string virtual attribute
=end
class User < ApplicationRecord
    has_secure_password
end
