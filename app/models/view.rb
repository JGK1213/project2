class View
  include Mongoid::Document
  field :name,  type: String
  field :event, type: String
end
