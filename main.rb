require_relative "player"
require_relative "question"

p1 = Player.new("Riley Paul")
p2 = Player.new("Muhammad Akbar33")

question_num = 0
while (p1.num_lives > 0 && p2.num_lives > 0)
  puts "P1: #{p1.num_lives}/3 vs P2: #{p2.num_lives}/3"
  puts "----- NEW TURN -----"

  question = Question.new

  if question_num % 2 == 0
    p1.ask(question)
  else
    p2.ask(question)
  end

  question_num += 1
end

winner = p1.num_lives > p2.num_lives ? p1 : p2
puts "#{winner.name} wins with a score of #{winner.num_lives}/3"
puts "----- GAME OVER -----"
puts "Thanks for playing"
