=begin
    email:string
    password:string
    --- has_secure_password : ---
    password:string virtual attribute
    password_confirmation:string virtual attribute
=end
class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format:{ with:/\A[^@\s]+@[^@\s]+\z/, message:"must be a valid email address"}
end
