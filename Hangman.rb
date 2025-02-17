class Hangman
    def initialize(words)
      @word = words.sample.upcase # Randomly selects a word and converts it to uppercase
      @hidden_word = "_" * @word.length # Initializes the hidden word with underscores
      @attempts = 6 # Maximum number of allowed mistakes
      @guessed_letters = [] # Stores already guessed letters
    end
  
    def play
      while @attempts > 0 && @hidden_word.include?("_")
        display_status
        print "Enter a letter: "
        letter = gets.chomp.upcase
  
        if valid_input?(letter)
          process_guess(letter)
        else
          puts "Invalid input. Please enter a single letter."
        end
      end
  
      game_result
    end
  
    private
  
    def display_status
      puts "\nWord: #{@hidden_word.chars.join(' ')}"
      puts "Attempts left: #{@attempts}"
      puts "Guessed letters: #{@guessed_letters.join(', ')}"
    end
  
    def valid_input?(letter)
      letter.match?(/^[A-Z]$/) && !@guessed_letters.include?(letter)
    end
  
    def process_guess(letter)
      @guessed_letters << letter
  
      if @word.include?(letter)
        update_hidden_word(letter)
      else
        @attempts -= 1
        puts "Incorrect guess!"
      end
    end
  
    def update_hidden_word(letter)
      @word.chars.each_with_index do |char, index|
        @hidden_word[index] = char if char == letter
      end
    end
  
    def game_result
      if @hidden_word == @word
        puts "Congratulations! You guessed the word: #{@word}"
      else
        puts "Game over! The word was: #{@word}"
      end
    end
  end
  
  words = ["ruby", "developer", "cybersecurity", "challenge"]
  game = Hangman.new(words)
  game.play
  