class Question
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :text, type: String
  
  belongs_to :user
  has_many :answers
  
  validates :user, :presence => true
end
