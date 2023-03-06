class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :role, :email
end
