#Application takes input from command line and passes it to Parser
class Application

  def initialize
    parser1 = Parser.new 
    print "$ "
    input = gets.chomp
    
    while input != 'exit' do 
        puts parser1.change(input)
        print "$ "
        input = gets.chomp
    end

  end

 end 