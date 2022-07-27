class User < ApplicationRecord
    has_secure_password
    
    scope :recent, -> { order(id: :desc) }
    
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    
    has_many :tasks
end
