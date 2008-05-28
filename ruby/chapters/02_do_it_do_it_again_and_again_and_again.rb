require File.join(File.dirname(__FILE__),'/../lib/02')

puts (lat? [:bacon, :and, :eggs]) # => true
puts (lat? [:bacon, [:and, :eggs]]) # => false

puts (member? :bacon, [:bacon, :and, :eggs]) # => true
puts (member? :pancakes, [:bacon, :and, :eggs]) # => false