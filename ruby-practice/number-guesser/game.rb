# number guesser

# game function
def game()
    # see if the game is won
    winning_status = false

    secret_number = rand(1..100)

    puts "Hello there! I think it's time to play a guessing game.\nWhat number have I generated? (#{secret_number})"
    puts "Take a guess: "

    while !winning_status
        guess = gets.chomp.to_i
        valid_answer = validate_guess(guess) # make sure the input falls within range
        if valid_answer
            winning_status = make_guess(guess, secret_number, winning_status)
        elsif
            puts "It seems your answer isn't valid. Only number between 1 and 100 are allowed."
        end
    end
end

# check if the guess is correct
def make_guess(guessed_number, generated_number, status)
    if guessed_number < generated_number
        puts "Try higher next time."
    elsif guessed_number > generated_number
        puts "Try lower next time."
    else
        puts "You guessed right, the number was indeed #{guessed_number}."
        status = true
    end
    return status
end

# validate if the guess allowed (so if it falls within the range, empty)
def validate_guess(guess)
    # return true or false based on whether it is an valid answer
    if guess < 1 || guess > 100
        return false
    else 
        return true
    end
end

game()