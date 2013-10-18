# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

def setup
    @r1 = Fraccion.new(1, 2)
    @r2 = Fraccion.new(4, 6)
  end

  def test_initialize
    assert_equal("1/2", Fraccion.new(1, 2).to_s)
    assert_equal("4/6", @r1.to_s)
  end
  
  def test_sum
    rr = @r1 + @r2
    assert_equal("14/12", rr.to_s)
  end

  def test_res
    rr = @r1 - @r2
    assert_equal("-2/12", rr.to_s)
  end

  def test_mul
    rr = @r1 * @r2
    assert_equal("3/4", rr.to_s)
  end
  
  def test_div
    rr = @r1.div(@r2)
    assert_equal("6/8", rr.to_s)
  end

end
