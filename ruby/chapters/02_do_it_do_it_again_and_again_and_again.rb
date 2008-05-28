require File.join(File.dirname(__FILE__),'/../lib/02')

puts (lat? list([:bacon, :and, :eggs])) # => true
puts (lat? list([:bacon, list([:and, :eggs])])) # => false

puts (member? :bacon, list([:bacon, :and, :eggs])) # => true
puts (member? :pancakes, list([:bacon, :and, :eggs])) # => false
