class DuelSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :win
  belongs_to :user
end
