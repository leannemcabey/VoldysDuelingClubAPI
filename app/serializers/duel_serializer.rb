class DuelSerializer < ActiveModel::Serializer
  attributes :id, :win
  belongs_to :user
end
