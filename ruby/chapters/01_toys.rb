require File.join(File.dirname(__FILE__),'/../lib/01')

puts (atom? :pat) # => true
puts (atom? :abc) # => true
puts (atom? []) # => false

puts (car [1,2,3]) # => 1
puts (car [:hamburger, :hotdogs, :pickles]) # => :hamburger
puts (car :pat) # => nil

puts (cdr [1,2,3]) # => 2,3
puts (cdr [:hamburger, :hotdogs, :pickles]) # => :hotdogs, :pickles
puts (cdr :pat) # => nil

l = [:a, [:b, [:c]], :d]
puts (cdr (car l)) # => nil

puts (eq? :pat, :pat) # => true

l = [:beans, :beans, :we, :need, :jelly, :beans]
puts (eq? (car l), (car (cdr l))) # => true

