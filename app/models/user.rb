class User
  include Mongoid::Document
  embeds_one :profile
  accepts_nested_attributes_for :profile
  field :name , :type =>String
  field :age  ,:type=>Integer
end
