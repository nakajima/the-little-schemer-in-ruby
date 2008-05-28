require File.join(File.dirname(__FILE__),'/../lib/03')

# rember
puts (rember :and, list(:bacon, :lettuce, :and, :tomato)) # => [:bacon, :lettuce, :tomato]

# firsts
puts (firsts list(list(:a, :b, :c), list(:d, :e, :f), list(:g, :h, :i))) # => [:a, :d, :g]
