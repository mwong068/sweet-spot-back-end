class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :email, :password_digest, :bio, :company_name, :seller, :orders, :products
end
