class Node
  attr_reader :value

  def initialize(node_value)
    @value = node_value
  end
end
class LinkedList
  def add(thing_to_add)
    node = Node.new(thing_to_add)
    @start = node
  end

def get(position)
  @start.value
  end
end
