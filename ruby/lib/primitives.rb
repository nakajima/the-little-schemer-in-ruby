def eq?(l1, l2)
  return nil if !(atom? l1) || !(atom? l2)
  l1 == l2
end

def car _list
  return nil if (atom? _list)
  _list.first
end

def cdr _list
  return nil if (atom? _list)
  _list.last
end

def null? _list
  return nil if (atom? _list)
  _list.nil? or _list.empty?
end

def cons(a, _list)
  [a, _list]
end

def list(*array)
	array ||= []
	array.flatten!
  array.reverse.inject(nil) {|memo,j| memo = [j,memo]}
end
