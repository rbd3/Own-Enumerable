require_relative 'enumerable_spec'
class MyList
  include MyEnumerable
  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @list.each(&block)
  end
end
# Create our list
list = MyList.new(1, 2, 3, 4)
# @list=[1, 2, 3, 4]
# Test #all?
puts(list.all? { |e| e < 5 })
#=> true
puts(list.all? { |e| e > 5 })
#=> false
# Test #any?
puts(list.any? { |e| e == 2 })
#=> true
puts(list.any? { |e| e == 5 })
#=> false
# Test #filter
puts(list.filter(&:even?))
#=> [2, 4]
