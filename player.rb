# def random1
#   @a = 1 + Random.rand(20)
# end
# def random2
#   @b = 1 + Random.rand(20)
# end

@score1 = 3
@score2 = 3

def player1 
  a = 1 + Random.rand(20)
  b = 1 + Random.rand(20) 
  if @score2 > 0 && @score1 > 0
  puts "What does #{a} plus #{b} equal"
  puts a+b
  print "> "
  choice = $stdin.gets.chomp.to_i
  if choice == a+b
    puts "YES! You are correct."
    puts "P1 #{@score1} vs P2 #{@score2}"
    player2
  else 
    puts "Seriously?NO"
    @score1 = @score1 - 1 
    puts "P1 #{@score1} vs P2 #{@score2}"
    player2
  end

else 
  puts "Player 2 wins with a score of #{@score2} /3"
end
end

def player2
  a = 1 + Random.rand(20)
  b = 1 + Random.rand(20)
  if @score2 > 0 && @score1 > 0
  puts "What does #{a} plus #{b} equal"
  print "> "
  choice = $stdin.gets.chomp.to_i
  if choice == a+b
    puts "YES! You are correct."
    puts "P1 #{@score1} vs P2 #{@score2}"
    player1
  else 
    puts "Seriously?NO"
    @score2 = @score2 - 1 
    puts "P1 #{@score1} vs P2 #{@score2}"
    player1
  end

else 
  puts "Player 1 wins with a score of #{@score1} /3"
end
end


  player1