require File.join(File.dirname(__FILE__), '01')

def lat? l
  case
  when (null? l) then true
  when (atom? (car l)) then (lat? (cdr l))
  else
    false
  end  
end

def member?(a, lat)
  return [] if (null? lat)
  return (eq? a, (car lat)) || (member? a, (cdr lat))
end