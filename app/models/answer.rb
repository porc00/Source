class Answer
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text, type: String
  
  belongs_to :user
  belongs_to :question
  
  validates :user, :question , :presence => true
end
