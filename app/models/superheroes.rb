require 'pry'
class Superhero
  attr_accessor :name, :power, :bio

  def initialize(argument)
    # binding.pry
    @name = argument[:name]
    @power = argument[:power]
    @bio = argument[:bio]
    self.class.all << self
  end

  def self.all
    @@superheroes ||= []
  end

end
