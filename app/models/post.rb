class Post < ActiveRecord::Base
  belongs_to :admin

  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end
