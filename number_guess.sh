#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

ASK_GUESS() {
  if [[ $1 ]]
  then
    echo "$1"
  fi
  read GUESS
  (( NUMBER_OF_GUESSES++ ))

  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    ASK_GUESS "That is not an integer, guess again:"
  fi
}

echo "Enter your username:"
read USERNAME

USER_EXISTS=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")
if [[ -z $USER_EXISTS ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
else
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(nr_guesses) FROM games WHERE user_id = $USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

NUMBER_OF_GUESSES=0
ASK_GUESS "Guess the secret number between 1 and 1000:"

while [[ $GUESS != $SECRET_NUMBER ]]
do
  if [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    ASK_GUESS "It's higher than that, guess again:"
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    ASK_GUESS "It's lower than that, guess again:"
  fi
  # (( NUMBER_OF_GUESSES++ ))
done

INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, nr_guesses) VALUES('$USER_ID', '$NUMBER_OF_GUESSES')")

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"