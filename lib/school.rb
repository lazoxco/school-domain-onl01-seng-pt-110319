# code here!
def School
  
  attr_reader :roster
  
  def initialize(roster)
    @roster = Hash.new
  end
end 