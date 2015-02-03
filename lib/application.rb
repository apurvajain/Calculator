#Application takes input from command line and passes it to Parser
class Application

  def initialize
    @calci = Parser.new
  end

  def start
   print "$ "
   input = gets.chomp
   while input != 'exit' do
    puts @calci.change(input)
    print "$ "
    input = gets.chomp
   end
  end

  def start_test
    input = Kernel.gets.chomp
    @calci.change(input)
  end
end 