#Operations takes operand, operation and gives the result
class Operations

	attr_reader :value
  
  def initialize
		@value = 0
	end

  def add(other)
		@value = @value + other

	end	

	def sub(other)
		@value = @value - other

	end	

	def multiply(other)
		@value = @value * other

	end	

	def divide(other)
		return false  if (other == 0) 
		@value = @value / other

	end	

	def cancel
		@value = 0
	end

	def sqr(other)
		@value = other * other
	end

	def srt(other)
		@value = Math.sqrt(other)
	end

	def cube(other)
		@value = other * other * other
	end

	def crt(other)
		@value = other ** (1.0/3)
	end

	def neg(other)
		@value = -(other)
	end

	def abs(other)
		@value = other.abs
	end
end