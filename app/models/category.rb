class Category
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String

  has_many :tasks

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
end
