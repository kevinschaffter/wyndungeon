require './game_methods.rb'

troll_health = 70
human_health = 100

puts "Enter your name"

name = gets.chomp

loop do

  `say -v "Daniel" "Hello #{name}. Welcome to WinDungeon."`

  WynDungeon.new.print_welcome

  3.times do |f|
    `afplay /System/Library/Sounds/Sosumi.aiff` * f
  end

  system "clear"

  `say -v "Daniel" "Choose your character"`

  WynDungeon.new.select
  input = gets.chomp
  input_require(input, "1" , "2")

  human_health = set_health(input, human_health)
  character_name = set_name(input) 
  voice = set_voice(input)

  `say -v "#{voice}" "Hello #{name}, lets a go!"`

  `say -v "Daniel" "Your health is at #{human_health.to_s}. If it drops to 0 you lose. Good Luck."`  

  system "clear"

  chicken_scene
  
  input = gets.chomp.to_s.downcase

  input_require(input, "right", "left")

  system "clear"

  case input

  when "right"
    human_health += 10
    
    chicken_scene_2(voice, character_name, human_health)

    input = gets.chomp.downcase

    input_require(input, "y", "n")

    if input == "y"

      until troll_health <= 0 || human_health <= 0

        human_health = troll_turn(human_health, character_name)

        troll_health = personal_turn(troll_health, character_name, voice)

      end

      if human_health <= 0 
        puts "Troll won",
        "Would you like to play again?"
        input = gets.chomp
        input_require(input, "y", "n")
        unless input == "y"
          break
        end
      end

      if troll_health <= 0
        `afplay /System/Library/Sounds/Glass.aiff`
        WynDungeon.new.print_win
        puts "YOU WON!!!!"
        `say -v "Daniel" "You Won! Congratulations. Now go eat your damn chicken."`
        puts "Would you like to play again?"
        input = gets.chomp
        input_require(input, "y", "n")
        unless input == "y"
          break
        end
      end

    else
      puts "YOU SHOULD HAVE ATTACKED! You are dead"
    end

  when "left"

    puts "You continue down the hallway and try to enter the classroom door."
    sleep 2
    puts "Before you enter the room you hear a creepy voice."
    sleep 2

    spoken_numbers = 7.times.map{rand(10)}
    answer_numbers = spoken_numbers.join

    numbers = numbers.to_s
    `say -v "Fred" "If you want to pass you must repeat the numbers I am about to say.
    Each incorrect guess will lower your health. Listen carefully. #{spoken_numbers}"` 

    space
    puts "What numbers did you hear?"

    guess = gets.chomp.to_s

    until human_health <= 0 || guess == answer_numbers
      human_health = human_health - rand(15..30)
      puts "Your health is now #{human_health}."
      `say -v "Fred" " That is incorrect. Your memory is terrible. Try again."` 
      guess = gets.chomp.to_i
    end

    if human_health <= 0
      puts "You are dead"
    else
      `afplay /System/Library/Sounds/Glass.aiff`
      WynDungeon.new.print_win
      puts "YOU GUESSED IT! You walk into a room full of gold!"
      `say -v "Daniel" "You Won! Congratulations."`
      puts "Would you like to play again?"
      input = gets.chomp
      input_require(input, "y", "n")
      unless input == "y"
        break
      end
    end

  else
    puts "You're not very good at directions...",
    "Let's try this again..."
  end
end








