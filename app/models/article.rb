class Article < ActiveRecord::Base
  belongs_to :user

  #To ensure that the title's column isn't empty and have a minimum and maximum length
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  #To ensure that the description's column isn't empty and have a minimum and maximum length
  validates :description, presence:true, length: {minimum:10, maximum:300}
  validates :user_id, presence:true
end