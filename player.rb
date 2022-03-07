class Player
  attr_accessor :num_lives, :name

  def initialize(name)
    @name = name
    @num_lives = 3
  end

  def ask(question)
    puts "#{self.name}: What does #{question.num1} plus #{question.num2} equal?"
    print "> "
    response = gets.chomp.to_i
    if response == question.answer
      puts "#{self.name}: Correct!"
    else
      puts "#{self.name}: Wrong!"
      self.num_lives -= 1
    end
  end
end
