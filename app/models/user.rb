class User <  ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 200 },format: { with: VALID_EMAIL_REGEX },
  uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 5 }
end



  # attr_accessor :name, :email
  # def initialize(attributes = {})
    # @name = attributes[:name]
    # @email = attributes[:email]
  #   super
  # end
  # def formatted_email
  #   "#{self.name} <#{self.email}>"
  # end
