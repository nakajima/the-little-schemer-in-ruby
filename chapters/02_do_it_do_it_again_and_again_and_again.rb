require File.join(File.dirname(__FILE__),'01_toys')

def lat? l
  case
  when (null? l) then true
  when (atom? (car l)) then (lat? (cdr l))
  else
    false
  end  
end

puts (lat? [:bacon, :and, :eggs]) # => true
puts (lat? [:bacon, [:and, :eggs]]) # => false
