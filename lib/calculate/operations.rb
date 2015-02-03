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

  def exit
    process.exit
  end

end