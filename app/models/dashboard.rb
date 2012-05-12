class Dashboard
  include Mongoid::Document
  belongs_to :user
  has_many :widgets
end
