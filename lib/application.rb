#Application takes input from command line and passes it to Parser
class Application

  def initialize
    operation1 = Parser.new 
    print "$ "
    input = gets.chomp
    
    while input != 'exit' do 
        puts operation1.change(input)
        print "$ "
        input = gets.chomp
    end

  end

 end 