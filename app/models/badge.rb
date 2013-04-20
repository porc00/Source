class Badge
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :logo, type: String
  field :rule, type: String
  
  has_and_belongs_to_many :users
  validates :users, :name, :presence => true
end
