class Post
	include Mongoid::Document
	include Mongoid::Timestamps
  include Mongoid::Sequence
	field :body, type: String 
  field :uid, type: Integer
  sequence :uid


end
