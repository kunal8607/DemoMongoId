class Profile
  include Mongoid::Document
  embedded_in :user
  field :nick_name , :type =>String
  field :phone_number  ,:type=>String
end
