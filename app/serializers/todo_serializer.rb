class TodoSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date
end
