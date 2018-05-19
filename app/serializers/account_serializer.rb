class AccountSerializer < ActiveModel::Serializer
  type :account
  attributes :id, :name, :domain
end
