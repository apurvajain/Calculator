#Parser splits the input and calls the respective operations
class Parser

  def initialize
    @ops = Operations.new()
  end

  def change(input)

    args = input.split
    if input.include?("add")
      @ops.add(args[1].to_f)
      return args

    elsif input.include?("sub")
      @ops.sub(args[1].to_f)
      return args

    elsif input.include?("multiply")
      @ops.multiply(args[1].to_f)
      return args

    elsif input.include?("divide")
      @ops.divide(args[1].to_f)
      return args

    elsif input.include?("cancel")
      @ops.cancel
      return args
    end

  end

end