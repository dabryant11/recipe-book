class User < ApplicationRecord
    has_many :user_dishes
    has_many :dishes, through: :user_dishes
end
