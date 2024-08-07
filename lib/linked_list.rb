require_relative "node"
# defines a linked list type
class LinkedList
  attr_accessor :head

  def initialize
    @head
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = new_node
    end
  end

  def to_s
    current = @head
    return "nil" if current.nil?

    result = ""
    while current
      result += "(#{current.value}) -> "
      current = current.next_node
    end
    result += "nil"
    result
  end
end
my_linked_list = LinkedList.new
my_linked_list.append(4)
my_linked_list.append(5)
my_linked_list.append(6)
puts my_linked_list
