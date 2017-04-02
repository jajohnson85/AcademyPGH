class Basic_class
  def say_hello
    puts @greeting
  end

  def say_goodbye
    puts "goodbye"
  end

def set_greeting(new_greeting)
  @greeting = new_greeting
end
def initialize
  @greeting = "hi"
end
end

my_variable = Basic_class.new
my_variable.set_greeting "Hiya doing"
my_variable.say_hello
my_variable.say_goodbye
other_var = Basic_class.new
my_var3 = Basic_class.new
my_var3.say_hello
