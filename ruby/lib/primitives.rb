def eq?(l1, l2)
  return nil if !(atom? l1) || !(atom? l2)
  l1 == l2
end

def car list
  return nil if (atom? list)
  list.first
end

def cdr list
  return nil if (atom? list)
  list.last
end

def null? list
  return nil if (atom? list)
  list.nil? or list.empty?
end

def cons(a, list)
  [a,list]
end

def list(array)
  array = Array(array) if atom?(array)
  array.reverse.inject(nil) {|memo,j| memo = [j,memo]}
end
