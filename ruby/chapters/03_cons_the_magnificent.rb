require File.join(File.dirname(__FILE__),'/../lib/03')

# rember
puts (rember :and, [:bacon, :lettuce, :and, :tomato]) # => [:bacon, :lettuce, :tomato]

# firsts
puts (firsts [[:a, :b, :c], [:d, :e, :f], [:g, :h, :i]]) # => [:a, :d, :g]