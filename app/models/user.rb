class User <  ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 200 }, format: { with: VALID_EMAIL_REGEX },
  uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
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
