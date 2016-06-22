require 'pry'
class Element
  attr_accessor :datum, :next_element
  def initialize(datum, next_element = nil)
    @datum = datum
    @next_element = next_element
  end
  def datum
    @datum
  end

  def tail?
    if @datum
      true
    end
  end

  def next
    next_element
  end


end

class SimpleLinkedList
  def initialize
    @list = []
  end

  def size
    @list.length
  end

  def empty?
    @list.empty?
  end

  def push(element)
    @list << Element.new(element, head)
  end

  def peek
    if @list[-1]
      @list[-1].datum
    end
  end

  def head
    @list[-1]
  end

  def pop
    @list.pop.datum
  end

  def self.from_a(arg)
    return new if arg.nil?
    new_list = new
    arg.reverse_each do |f|
      new_list.push(f)
    end
    new_list
  end

  def to_a
    @list.map do |f|
      f.datum
    end.reverse
  end

  def reverse
    arr = self.to_a.reverse
    SimpleLinkedList.from_a(arr)
  end
end
