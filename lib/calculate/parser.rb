#Parser splits the input and calls the respective operations
class Parser

  def initialize
    @ops = Operations.new()
  end

  def change(input)

    args = input.split
    if input.include?("add")
      @ops.add(args[1].to_f)
      

    elsif input.include?("sub")
      @ops.sub(args[1].to_f)


    elsif input.include?("multiply")
      @ops.multiply(args[1].to_f)


    elsif input.include?("divide")
      @ops.divide(args[1].to_f)


    elsif input.include?("cancel")
      @ops.cancel


    elsif input.include?("abs")
      @ops.abs(args[1].to_f)


    elsif input.include?("cube")
      @ops.cube(args[1].to_f)


    elsif input.include?("crt")
      @ops.crt(args[1].to_f)


    elsif input.include?("sqr")
      @ops.sqr(args[1].to_f)


    elsif input.include?("srt")
      @ops.srt(args[1].to_f)


    elsif input.include?("neg")
      @ops.neg(args[1].to_f)


    end

  end

end