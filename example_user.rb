class Exampleuser
  # attr_accessor :name, :email
  attr_accessor :firstname, :lastname, :email
  def initialize(attributes = {})
    @firstname = attributes[:firstname]
    @lastname = attributes[:lastname]
    @email = attributes[:email]
  end
  def formatted_email
    "#{@firstname} <#{@email}>"
  end
  def full_name
    "#{@firstname} #{@lastname}"
  end
  def alphabetical_name
      "#{@firstname}, #{@lastname}"
  end
end
