class PurchaseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :creation_id, :quantity, :total
end
