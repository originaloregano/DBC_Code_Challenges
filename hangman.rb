class Hangman
  attr_accessor :word, :guess_limit
  
  def initialize(word)
    @word = nil
    @all_guesses = []
    @guess_counter = 0
    @secret_word = nil
    @guess_limit = 0
  end

  def set_guess_limit
    # Assign guess_limit equal to the length of the word
    @guess_limit = @word.count
  end

  def make_secret_word(word)
    # Assign word to class variable
    @word = word
    # Replace all letters with an underscore per letter and assign to class variable secret_word
    @secret_word = @word.tr("abcdefghijklmnopqrstuvwxyz", "_")
  end


  def guess_letter(letter)
    if  @all_guesses.include?(letter)
      puts "You have already guessed that. Your current guesses are #{@all_guesses}. Please try again."
      #if letter has already been guessed, counter stays the same
    elsif @word.include?(letter)
      @secret_word[@word.index(letter)] = letter
      puts @secret_word
      @all_guesses << letter
      @guess_counter = @guess_counter + 1
      #if letter is in word, counter goes up by one and printing progress with secret_word
    else
      puts "The word is #{@secret_word}"
      puts "That guess is incorrect. Please try again."
      @all_guesses << letter
      @guess_counter = @guess_counter + 1
      #if guess has not been made before, counter goes up by 1 and print progress with secret_word
    end
  end


  def play_game(word)
    #until the number of guesses equals word.length

    # Make word into secret
    make_secret_word(word)

    # Set Guess Limit
    set_guess_limit


    puts "Player Two: You have #{@guess_limit} chances to guess the secret word."
        
    
    until @guess_counter == @guess_limit do      
      puts "You have made #{@guess_counter} guess(es)."
      puts "What is your guess?"
      letter = gets.chomp.downcase
      guess_letter(letter)

      #update how many guesses have been made
      break if !@secret_word.include?("_")
    end

    #if secret is completely filled in and does not have any more spaces == won
    if  @secret_word.include?("_")
      puts "You ran out of chances. Try watching more Wheel of Fortune. The correct word was #{@word}."
    else
       puts "Winner winner chicken dinner!!! You win."
    end
  end


  def start
    puts "Player One: Give me a word to guess:"

    word = gets.chomp.downcase

    play_game(word)
  end

end

###USER INTERFACE####

game = Hangman.new
game.start




















