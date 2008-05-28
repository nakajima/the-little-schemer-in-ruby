def eq?(l1, l2)
  return nil if !(atom? l1) || !(atom? l2)
  l1 == l2
end

def car list
  return nil if (atom? list)
  list[0]
end

def cdr list
  return nil if (atom? list)
  list[1..-1]
end

def null? list
  return nil if (atom? list)
  list.empty?
end

def cons(a, list)
  list.dup.unshift(a)
end
