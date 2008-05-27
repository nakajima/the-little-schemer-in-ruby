require File.join(File.dirname(__FILE__),'/../lib/02')

puts (lat? [:bacon, :and, :eggs]) # => true
puts (lat? [:bacon, [:and, :eggs]]) # => false
