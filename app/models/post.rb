class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true
  has_many :comments
  belongs_to :author, class_name: 'user'
end
