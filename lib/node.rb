# Defines a node class
# with a link to the next node and a value
# and a method to display the value
class Node
  attr_accessor :link, :value

  def initialize(link, value)
    @link = link
    @value = value
  end

  def display_value
    p @value
  end
end
