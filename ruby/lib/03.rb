require File.join(File.dirname(__FILE__), '02')

def rember(a, lat)
  return [] if (null? lat)
  return (cdr lat) if (eq? a, (car lat)) 
  return (cons (car lat), (rember a, (cdr lat)))
end

def firsts(lat)
  return [] if (null? lat)
  return (cons (car (car lat)), (firsts (cdr lat)))
end