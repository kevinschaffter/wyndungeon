class WynDungeon
  
  def initialize
    @characters = <<~END
       
             Enter - (1)                                Enter - (2)
      ========= Mario =========                  ========= Peach ========
      Health:   70                               Health:   80
      Knowlege: 2                                Knowlege: 8
      Speed:    8                                Speed:    5

      END

    @photo = <<~END


                                                                                   
┌────────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                                                                                    │
│▄▄      ▄▄                     ▄▄▄▄▄                                                                │
│██      ██                     ██▀▀▀██                                                              │
│▀█▄ ██ ▄█▀ ▀██  ███  ██▄████▄  ██    ██  ██    ██  ██▄████▄   ▄███▄██   ▄████▄    ▄████▄   ██▄████▄ │
│ ██ ██ ██   ██▄ ██   ██▀   ██  ██    ██  ██    ██  ██▀   ██  ██▀  ▀██  ██▄▄▄▄██  ██▀  ▀██  ██▀   ██ │
│ ███▀▀███    ████▀   ██    ██  ██    ██  ██    ██  ██    ██  ██    ██  ██▀▀▀▀▀▀  ██    ██  ██    ██ │
│ ███  ███     ███    ██    ██  ██▄▄▄██   ██▄▄▄███  ██    ██  ▀██▄▄███  ▀██▄▄▄▄█  ▀██▄▄██▀  ██    ██ │
│ ▀▀▀  ▀▀▀     ██     ▀▀    ▀▀  ▀▀▀▀▀      ▀▀▀▀ ▀▀  ▀▀    ▀▀   ▄▀▀▀ ██    ▀▀▀▀▀     ▀▀▀▀    ▀▀    ▀▀ │
│            ███                                               ▀████▀▀                               │
│                                                                                                    │
└────────────────────────────────────────────────────────────────────────────────────────────────────┘
                                              Version 0.01

                              ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
                              ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
                              ▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒
                              ▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒
                              ▒▒▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒
                              ▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▄░░▒▒▒▒▒
                              ▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██▌░░▒▒▒▒
                              ▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░▄▄███▀░░░░▒▒▒
                              ▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░█████░▄█░░░░▒▒
                              ▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░▄████████▀░░░░▒▒
                              ▒▒░░░░░░░░░░░░░░░░░░░░░░░░▄█████████░░░░░░░▒
                              ▒░░░░░░░░░░░░░░░░░░░░░░░░░░▄███████▌░░░░░░░▒
                              ▒░░░░░░░░░░░░░░░░░░░░░░░░▄█████████░░░░░░░░▒
                              ▒░░░░░░░░░░░░░░░░░░░░░▄███████████▌░░░░░░░░▒
                              ▒░░░░░░░░░░░░░░░▄▄▄▄██████████████▌░░░░░░░░▒
                              ▒░░░░░░░░░░░▄▄███████████████████▌░░░░░░░░░▒
                              ▒░░░░░░░░░▄██████████████████████▌░░░░░░░░░▒
                              ▒░░░░░░░░████████████████████████░░░░░░░░░░▒
                              ▒█░░░░░▐██████████▌░▀▀███████████░░░░░░░░░░▒
                              ▐██░░░▄██████████▌░░░░░░░░░▀██▐█▌░░░░░░░░░▒▒
                              ▒██████░█████████░░░░░░░░░░░▐█▐█▌░░░░░░░░░▒▒
                              ▒▒▀▀▀▀░░░██████▀░░░░░░░░░░░░▐█▐█▌░░░░░░░░▒▒▒
                              ▒▒▒▒▒░░░░▐█████▌░░░░░░░░░░░░▐█▐█▌░░░░░░░▒▒▒▒
                              ▒▒▒▒▒▒░░░░███▀██░░░░░░░░░░░░░█░█▌░░░░░░▒▒▒▒▒
                              ▒▒▒▒▒▒▒▒░▐██░░░██░░░░░░░░▄▄████████▄▒▒▒▒▒▒▒▒
                              ▒▒▒▒▒▒▒▒▒██▌░░░░█▄░░░░░░▄███████████████████
                              ▒▒▒▒▒▒▒▒▒▐██▒▒░░░██▄▄███████████████████████
                              ▒▒▒▒▒▒▒▒▒▒▐██▒▒▄████████████████████████████
                              ▒▒▒▒▒▒▒▒▒▒▄▄████████████████████████████████
                              ████████████████████████████████████████████

      END


      @troll = <<~END

        ░░░░░░░░░░░░░░░░░░░▒▓▓█████████████▓▓▒░░░░░░░░░░░░░░░░░░░░░░
        ░░░░░░░░░░░░░░▒████▓▓▒▒░▒▒▒░▒▒▒▒▒▒▓▓████▓▒░░░░░░░░░░░░░░░░░░
        ░░░░░░░░░░░▒███▓░░░░░░░░░░░░░░░░░░░░░░▒███████▓▓▒░░░░░░░░░░░
        ░░░░░░░░░▒██▓░░░░▒▒███▓▓▒░░░░░░░░░░░░░▓▓▒▒▒▒▒▓██████▓░░░░░░░
        ░░░░░░░▒██▓░░░▓███▓▒░░░░░░░░▒▒▒▒▒▒▒▒▒▒░░░░░░▒▓▓███▓████▒▒░░░
        ░░░░░░██▓░░▒▓██▓░░▒▓██████▓░░░░░░░▒░░░░░░▒██▓▒░░░▓███▒▓▒░░░░
        ░░░░░██░░▓███▒░░▒██▒░░░░▒▒██▓░░░░░░░░░░░██▒░░░░▒████▒█░░░░░░
        ░░░░██░▒▓▒▓▓░░░██░░░░░░░░░░░█▓░░░░░░░░░██░░░░░░▒███░░█▒░░░░░
        ░░░▓█░░░░░░░░░██░░░░░░░░░░░░▓█░░░░░░░░██░░░░░░░░░░░░░█▒░░░░░
        ░░░█▓░░░░░░░░░█▒░░████░░░░░░░█▒░░░░░░░██░░░░░░░░░░░░███░░░░░
        ░░▒█░░░░░░░▒▓▒█▓░▓████▓░░░░░▒█░░░░░░░░▒█▒░░░░░░░░░░██░█▒░░░░
        ░░██░░░░░▒▓▒▓▒██▒▒▓▓▓░░░░░░░██░░░░░░░░░▒████▓███████▓░█▒░░░░
        ░░█▓░░░░░▒░░░▒░▒██▓▒░░░░░▒██▓░░░░░░░░░░░░░░██▓░░░░░░▒██▓░░░░
        ░░█░░░░░░░░░▓▒░░░░▒▓██████▓░░░░░░░░░░░░░░▒██░░░▓█▓▓▒░░░██░░░
        ░▒█░░░░░░░░░░░░░░░░░░░░░░░░░░▓▒▓▒▒▒▒▒▓▓▓▓██░░▓█▓░▒▒██▒░░██░░
        ░▓█░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▓▓▒░░██░░██▓░▒░▒░██░░▒█░░
        ░██░░░░░░░░░░░░░░░░░░░░░░░▒▓▒▒▒▒▒▒▒▒░░░██░░▓█░█▓░█▒█▓█▓░░█░░
        ░██░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒░▒▒░░▓█▓░░██░█▒▒█▒█▒▓█░░█░░
        ░██░░░░░░░░░░░░░░░░░░░░░░░░▒░░░░░░░░░░▓█░░░█▒░░░░▒▒░░▒█░▓█░░
        ░▒█░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒░░█▒░░█▒░░░░░░░░▓█░█▓░░
        ░░█▓░▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓█░░█▒░░░░░░░░█░▒█░░░
        ░░▓█░░▒░░▒▒░░▒░░░░░░░░░░░░░░░░░░░░░░░░░░█░░█▒░░░░░░░█▓░█▓░░░
        ░░░█▒░░▒░░▒░░▒▒░░░░░░░░░░░░░░░░░░░░░░░░░█░░█▒░░░░░░▓█░░█░░░░
        ░░░██░░░▒░▒░░░▒▒░░░░░░░░░░░░░░░░░░░░░░░░█░░█▒░░░░░░██░░█░░░░
        ░░░░█▓░░░▒░▒░░░░▒▒░░░░░▒▒▒▒▒▒░░░░░░░░░░▒█░▒█░░░░░░░█▒░░█▓░░░
        ░░░░▓█░░░░▒▒░░░░░▒▒░░░░░░▒▒▒▓▓▓▒░░░░░░░██░██░░░░░░░██░░▓█░░░
        ░░░░░██░░░▒░▒░░░░░▒░░░░░░░░▒░▒▒▓█▒░░░░▒█░░█▓▒▓▓▓▒░░▓█░░░█▒░░
        ░░░░░▒█▒░░░▒▒▒░░░░▒░░░░░░░░░░▒▒▒░▒▓░░░██░▒█░░░░▒▓▓░░██░░█▒░░
        ░░░░░░▒█▒░░░▒░▒░░░▒░░░░░░▒▒▒░░░░▒▒░░░▒█░░██░░░░░░░█░▒█░░█▒░░
        ░░░░░░░▓█░░░▒░▒░░░░▒▒░░░░▓▒▒▓▓▓▒░░▓▒░██░░██▒▒▒▒▓▒▓▓███░░█▒░░
        ░░░░░░░░██░░░▒░▒░░░░░▒▒░░░░░░░░▓█▓░░░█▓░░██░▓█░█░█░░█▒░░█▒░░
        ░░░░░░░░░██░░░░▒▒░░░░░░▒▒░░░░░░░░▒█▓░█▓░░▓█▒▒█▒█░█▒██░░▒█░░░
        ░░░░░░░░░░██▒░░░░▒░░░▒░░░▒▒░░░░░░░░▒▓██░░░██░░░░▒▒██░░░██░░░
        ░░░░░░░░░░░▓██░░░░░░░░▒▒░░░▒░░░░░░░░░▓█░░░░▓███▓▓██░░░██░░░░
        ░░░░░░░░░░░░░▓██▒░░░░░░▒▒▒▒▒░░░░░░░░░░██░░░░░░▒▒▒░░░░██░░░░░
        ░░░░░░░░░░░░░░░▓███▒░░░░░░░▒▒▒▒▒▒▒▒░░░░▓██▒░░░░░░░▒███░░░░░░
        ░░░░░░░░░░░░░░░░░▒▓███▓▒░░░░░░░▒░░▒▒▒▒░░░▒██▓██████▓░░░░░░░░
        ░░░░░░░░░░░░░░░░░░░░░▒████▓▒▒░░░░░░░░░░░░░░░▓██▒░░░░░░░░░░░░
        ░░░░░░░░░░░░░░░░░░░░░░░░░▒▓████▓░░░░░░░▓█████▒░░░░░░░░░░░░░░
        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒█████████▒░░░░░░░░░░░░░░░░░░░
        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒░░░░░░░░░░░░░░░░░░░░░░░

        END

        @win = <<~END

          ───────────────────────────────
          ──────────▄▄▄▄▄▄▄▄▄▄▄──────────
          ─────▄▄▀▀▀▀──────────▀▀▄▄──────
          ───▄▀───────────────────▀▀▄────
          ──█────────────────────────█───
          ─█─────────────────────▄▀▀▀▀▀█▄
          █▀────────────────────█────▄███
          █─────────────────────█────▀███
          █─────▄▀▀██▀▄─────────█───────█
          █────█──████─█─────────▀▄▄▄▄▄█─
          █────█──▀██▀─█───────────────█─
          █────█───────█──────────────▄▀─
          █────▀▄─────▄▀──▄▄▄▄▄▄▄▄▄───█──
          █──────▀▀▀▀▀────█─█─█─█─█──▄▀──
          ─█──────────────▀▄█▄█▄█▀──▄▀───
          ──█──────────────────────▄▀────
          ───▀▀▀▄──────────▄▄▄▄▄▄▀▀──────
          ────▄▀─────────▀▀──▄▀──────────
          ──▄▀───────────────█───────────
          ─▄▀────────────────█──▄▀▀▀█▀▀▄─
          ─█────█──█▀▀▀▄─────█▀▀────█──█─
          ▄█────▀▀▀────█─────█────▀▀───█─
          █▀▄──────────█─────█▄────────█─
          █──▀▀▀▀▀█▄▄▄▄▀─────▀█▀▀▀▄▄▄▄▀──
          █───────────────────▀▄─────────

          END
  end

  def select
    puts @characters
  end

  def print_welcome
    puts @photo
  end

  def print_troll
    puts @troll
  end

  def print_win
    puts @win
  end
end

troll_health = 100
human_health = 100

def set_health(character, human_health)
  if character == "1"
    human_health = 70
  else
    human_health = 80
  end
  return human_health
end

def set_name(character)
  if character == "1"
    character_name = "Mario"
  else
    character_name = "Lucy"
  end
  return character_name
end

def set_voice(character)
  if character == "1"
    voice = "Luca"
  else
    voice = "Kyoko"
  end
  return voice
end

def troll_attack
  troll_attack = rand(20..40)
end

def personal_attack
  attack_strength = rand(30..60)
end

def troll_turn(human_health, character_name)
  puts "======TROLL TURN====="
  puts "Troll ATTACKS!"
  2.times { sleep 1; print "." }
  puts ""
  human_health = human_health - troll_attack
  puts "Troll does #{troll_attack} damage."
  puts "#{character_name}'s health is #{human_health}"
  `say -v "Daniel" "Ouch! Your health is now down to #{human_health}."`
  return human_health
end

def personal_turn(troll_health, character_name, voice)
  puts "======#{character_name.upcase}'s' TURN====="
  puts "#{character_name} ATTACKS!"
  2.times { sleep 1; print "." }
  puts ""
  troll_health = troll_health - personal_attack
  puts "#{character_name} does #{personal_attack} damage."
  puts "Troll health is #{troll_health}."
  return troll_health
end

troll_health = 70
human_health = 100

  puts "Enter your name"

  name = gets.chomp


  ########### Beggining of Game ###########

  loop do

  `say -v "Daniel" "Hello #{name}. Welcome to WinDungeon."`

  WynDungeon.new.print_welcome

  3.times do |f|
  `afplay /System/Library/Sounds/Sosumi.aiff` * f
  end

  system "clear"

  `say -v "Daniel" "Choose your character"`

  WynDungeon.new.select

  character = gets.chomp

  human_health = set_health(character, human_health)
  character_name = set_name(character) 

  voice = set_voice(character)

  `say -v "#{voice}" "Hello #{name}, lets a go!"`

  `say -v "Daniel" "Your health is at #{human_health.to_s}. If it drops to 0 you lose. Good Luck."`  

  system "clear"

  puts "You are walking through Wynwood late at night and notice a light shining through some windows."  
  sleep 2
  puts ""
  puts "You walk over to further investigate and realize that there is some strange activity in Wyncode." 
  puts ""
  puts "You step inside and notice there is a split in the path." 
  sleep 3
  puts ""
  puts  "On the left you here faint voices and on the right you smell what seems to be fried chicken."  
  sleep 2
  puts ""
  puts  "Do you go (left) to voices or (right) to the fried chicken?"
  puts ""
  
  direction = gets.chomp.to_s.downcase

  system "clear"

  case direction

  when "right"
    human_health += 10
    puts "You are starving and can't help but follow the smell of chicken."
    puts " "

      `say -v "#{voice}" "I must follow the smell of the chicken!"`


    sleep 2
    puts "You continue down the path and notice an enormous chicken roasting over an open fire."
    sleep 3
    `say -v "#{voice}" "My god. This chicken looks amazing! I must take a little bite."`
    sleep 1
    `say -v "Daniel" "#{character_name} heads towards the chicken and takes a rediculously big bite."`
    sleep 1
    `say -v "#{voice}" "Wow. This is the best chicken I have ever had."`

    system "clear"
       sleep 1
      `say -v "Daniel" "#{character_name}'s health has increased by 10 points to #{human_health.to_s} points. 
      However, as #{character_name} is enjoying the delicious chicken, 
      five furious trolls emerge."`

      WynDungeon.new.print_troll

      3.times do |f|
      `afplay /System/Library/Sounds/Sosumi.aiff` * f
      end

      system "clear"

      puts "One of the trolls comes running towrads you."
      puts "Do you fight with the troll?"
      puts "(y) or (n)"
      fight = gets.chomp

      if fight == "y"

        until troll_health <= 0 || human_health <= 0

          human_health = troll_turn(human_health, character_name)

          troll_health = personal_turn(troll_health, character_name, voice)

        end

      if human_health <= 0 
        puts "Troll won"
        puts "Would you like to play again?"
        again = gets.chomp
        unless again == "y"
          break
        end
      end

      if troll_health <= 0
        `afplay /System/Library/Sounds/Glass.aiff`
        WynDungeon.new.print_win
        puts "YOU WON!!!!"
        `say -v "Daniel" "You Won! Congratulations. Now go eat your damn chicken."`
        puts "Would you like to play again?"
        again = gets.chomp
          unless again == "y"
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

      puts ""
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
      again = gets.chomp
        unless again == "y"
          break
        end
    end

  else
    puts "You're not very good at directions..."
    puts "Let's try this again..."
  end
end








