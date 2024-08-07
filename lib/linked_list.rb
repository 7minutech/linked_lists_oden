require_relative "node"
require "pry-byebug"

# defines a linked list type
class LinkedList
  private

  attr_accessor :head

  public

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

  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      prev_head = @head
      @head = new_node
      @head.next_node = prev_head
    end
  end

  def size
    counter = 0
    unless head.nil?
      current = @head
      # for the head
      counter += 1
      while current.next_node
        current = current.next_node
        counter += 1
      end
      counter
    end
    counter
  end

  def get_head
    @head.value
  end

  def tail
    current = @head
    current = current.next_node while current.next_node
    current.value
  end

  def at(index)
    current_index = 0
    current = @head
    while current_index < index
      current = current.next_node
      current_index += 1
      return "Out of range" if current.nil?
    end
    current.value
  end

  def pop
    if size.zero?
      nil
    elsif size == 1
      @head = nil
    else
      current = @head
      while current.next_node
        prev_node = current
        current = current.next_node
        prev_node.next_node = nil if current.next_node.nil?
      end
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
puts my_linked_list
puts my_linked_list.size
my_linked_list.pop
puts my_linked_list
my_linked_list.append(4)
puts my_linked_list
