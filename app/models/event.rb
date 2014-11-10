class Event
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  field :name, type: String
  field :event, type: String
  field :digit, type: Integer
  field :time, type: String
  field :comment, type: String
  
end
