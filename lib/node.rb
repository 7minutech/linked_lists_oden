# Defines a node class
# with a link to the next node and a value
# and a method to display the value
class Node
  attr_accessor :next_node, :value

  def initialize(value)
    @next_node = nil
    @value = value
  end
end
