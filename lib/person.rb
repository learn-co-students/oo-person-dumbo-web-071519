# your code goes here

class Person
  attr_reader :name
  attr_writer (:happiness, :hygiene)
  attr_accessor :bank_account
  
  def initialize(name_arg)
    @name = name_arg
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def clean?
    @hygiene > 7
  end
  
  def happy?
    @happy > 7
  end
  
end



