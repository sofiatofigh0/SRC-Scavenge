class User < ApplicationRecord
    has_secure_password
    has_many :user_resources
    has_many :resources, through: :user_resources
    # has_many :user_courses
    # has_many :courses, through: :user_courses  
  end