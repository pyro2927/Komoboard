class Dashboard
  include Mongoid::Document
  field :title, :type => String
  belongs_to :user
  has_many :widgets
end
