# Implementar en este frichero la clase para crear objetos racionales
require "./gcd.rb"

class Fraccion
	attr_reader :n, :d

   	def initialize (n, d)
    		@n, @d = n, d
  	end
	
	def to_s
    		"#{@n}/#{@d}"
 	end

	def div(other)
    		n = @n * other.d
    		d = @d * other.n
    		s = Fraccion.new(n, d)
    		s
  	end

 	def *(other)
    		n = @n * other.n
    		d = @d * other.d
    		s = Fraccion.new(n, d)
    		s
  	end

	def +(other)
    		n = (@n * other.d) + (@d * other.n)
    		d = @d * other.d
    		s = Fraccion.new(n, d)
    		s
  		end
  
 	def -(other)
    		n = (@n * other.d) - (@d * other.n)
    		d = @d * other.d
    		s = Fraccion.new(n, d)
    		s
  	end
end
