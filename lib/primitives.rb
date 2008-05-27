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
  list.delete_at(0)
  list
end

def null? list
  return nil if (atom? list)
  list.empty?
end