#!/bin/bash 
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c" 

# prompt the user for the username with "Enter your username: (varchar 22 chars)"
echo -e "Enter your username: "
read NAME 

# If the username has not been used before, you should print "Welcome, <username>! It looks like this is your first time here."
USERNAME=$($PSQL "select username from users where username='$NAME'")
if [[ -z $USERNAME ]] 
then
	echo -e "Welcome, $NAME! It looks like this is your first time here."
	ADD_USER=$($PSQL "insert into users(username) values('$NAME')")

 # If that username has been used before, it should print "Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses." [with <username> being a users name from the database, <games_played> being the total number of games that user has played, and <best_game> being the fewest number of guesses it took that user to win the game] 
else
	GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games left join users USING (user_id) WHERE username='$NAME'")
	BEST_GAME=$($PSQL "select MIN(number_of_guesses) from games left join users USING (user_id) WHERE username='$NAME'")

	echo -e "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

fi 

# Generate the random number from 1-1000

RAND_NUM=$(( $RANDOM%1000 ))
GUESS_TIMES=0

# Prompt: "Guess the secret number between 1 and 1000:" 

echo -e "\nGuess the secret number between 1 and 1000:"

GUESS() {
 # input from the user should be read 
read USER_GUESS

 # If anything other than an integer is input as a guess, it should print That is not an integer, guess again:
 
if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
then
	echo -e "\nThat is not an integer, guess again:" 
	
# go back to the beginning of GUESS function
	GUESS

else

# Until they guess the secret number, it should print "It's lower than that, guess again:" if the previous input was higher than the secret number, and "It's higher than that, guess again:" if the previous input was lower than the secret number. Asking for input each time until they input the secret number.
 
	if [ $RAND_NUM -lt $USER_GUESS ]
	then
		echo -e "\nIt's lower than that, guess again:"
		GUESS_TIMES=$((GUESS_TIMES+1))
 
		GUESS

	elif [ $RAND_NUM -gt $USER_GUESS ]
	then
		echo -e "\nIt's higher than that, guess again:"
		GUESS_TIMES=$((GUESS_TIMES+1)) 

		GUESS 

# When the secret number is guessed, your script should print "You guessed it in <number_of_guesses> tries. The secret number was <secret_number>. Nice job!" and finish running
	else 
		GUESS_TIMES=$((GUESS_TIMES+1))
		echo -e "\nYou guessed it in $GUESS_TIMES tries. The secret number was $RAND_NUM. Nice job!"
		USERNAME_ID=$($PSQL "select user_id from users where username='$NAME'")
		INSERT_GAME=$($PSQL "insert into games (user_id, number_of_guesses) values('$USERNAME_ID','$GUESS_TIMES') ")
		exit
	fi

fi
 }

GUESS