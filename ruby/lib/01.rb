require File.join(File.dirname(__FILE__),'/primitives')

def atom?(x)
  !x.nil? and x.respond_to?(:to_sym)
end