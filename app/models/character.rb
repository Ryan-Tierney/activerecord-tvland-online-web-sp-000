class Character < ActiveRecord::Base
  belongs_to :show, :actor
  
  def say_that_thing_you_say 
    Character.catchphrase 
  end 
end