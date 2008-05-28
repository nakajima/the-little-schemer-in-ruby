#! /usr/bin/ruby

require 'test/unit'

require File.join(File.dirname(__FILE__), 'primitives')
require File.join(File.dirname(__FILE__), '01')

class RubySchemeTest < Test::Unit::TestCase

  def setup
    @a = 1
    @b = (1..3).to_a
    @c = @b.dup
  end

  def test_car_of_list
    x = @b.dup
    assert_equal x[0], car(@b), "car(@b)"
    assert_equal x, @b, "car should be nondestructive"
  end

  def test_cdr_of_list
    x = @b.dup
    assert_equal x[1..-1], cdr(@b), "cdr(@b)"
    assert_equal x, @b, "cdr should be nondestructive"
  end

  def test_cons_atom_list
    result = [1,1,2,3]
    xa = @a
    xb = @b.dup
    assert_equal result, cons(@a,@b), "cons(@a,@b)"
    assert_equal xa, @a, "cons should be nondestructive to first arg"
    assert_equal xb, @b, "cons should be nondestructive to second arg"
  end

  def test_cons_list_list
    result = [[1,2,3],1,2,3]
    xb = @b.dup
    xc = @c.dup
    assert_equal result, cons(@b,@c), "cons(@b,@c)"
    assert_equal xb, @b, "cons should be nondestructive to first arg"
    assert_equal xc, @c, "cons should be nondestructive to second arg"
  end

end
