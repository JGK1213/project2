class Userprofile
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  field :name, type: String
  field :event, type: String
  field :comment, type: String
end
