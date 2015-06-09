## Exercise 2

# Find below a definition for a Singly-Linked List class.  
# require 'pry'

class LinkedList
  include Enumerable
  def initialize(*values)
    @head = nil
    @last = nil
    values.each do |value|
      append(value)
    end
  end

  def append(value)
    node = ListNode.new(value)
    if @last
      @last.next_elem = node
      @last = node
    else
      #Empty list
      @head = @last = node
    end
  end

  def values
    self.map(&:value)   
  end

  def each &block
    node = @head
    loop do
      break if node.nil?
      yield node
      node = node.next_elem
    end
  end

  def remove_item
    return nil if @head.nil?
    value = @head
    @head = @head.next_elem
    return value
  end

  def reverse!
    return if @head.nil?

    @temp_head = self.remove_item
    @temp_head.next_elem = nil
    @last = @temp_head

    until @head.nil?
      entry = self.remove_item
      entry.next_elem = @temp_head
      @temp_head = entry
    end
    @head = @temp_head
  end

  def to_s
    values.to_s
  end
  
end

class ListNode
  attr_accessor :value, :next_elem

  def initialize(value = nil, next_elem = nil)
    @value = value
    @next_elem = next_elem
  end

end



# Your exercise is to implement a method that will take a linked list of arbitrary 
# length and return a new linked list with the reverse the order of the original list. 
# For example, a linked list as follows:
#
#   ['A', 'B', 'C']
#
# When reversed should provide:
#
#  ['C', 'B', 'A']
#
# Include unit tests for your solution in a separate file
