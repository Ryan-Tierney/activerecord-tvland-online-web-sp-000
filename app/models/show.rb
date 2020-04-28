class Show < ActiveRecord::Base
  belongs_to :network 
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list 
    new_array = [] 
    self.actors.each do |name|
      new_array << name
    end 
    return new_array
  end 
end