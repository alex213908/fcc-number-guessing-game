#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"; read USERNAME
DATABASE_CHECK_RESULT=$($PSQL "SELECT * FROM number_guess WHERE username='$USERNAME';")
if [[ -z $DATABASE_CHECK_RESULT ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  DATABASE_INSERT=$($PSQL "INSERT INTO number_guess(username) VALUES('$USERNAME')")
else
  echo $DATABASE_CHECK_RESULT |(IFS="|" read  USER PLAYED BEST
  echo "Welcome back, $USER! You have played $PLAYED games, and your best game took $BEST guesses."
  )
fi
RANDOM_NUMBER=$(( $RANDOM % 1000 +1 )) 
echo "Guess the secret number between 1 and 1000:"
echo $RANDOM_NUMBER
ROUNDS_PLAYED=0
while true
do
  ((ROUNDS_PLAYED+=1))
  read GUESS
  until [[ "$GUESS" =~ ^[0-9]+$ ]]
  do
    echo "That is not an integer, guess again:"
    read GUESS
  done
  
  if [[ $(($GUESS)) == $RANDOM_NUMBER ]]
  then
      PLAYED_CHECK=$($PSQL "SELECT games_played FROM number_guess WHERE username='$USERNAME'")
      if [[ -z $PLAYED_CHECK ]]
      then
        UPDATE_ENTRY_PLAYED=$($PSQL "UPDATE number_guess SET games_played=1, best_game=$ROUNDS_PLAYED WHERE username='$USERNAME';")
      else
        ((PLAYED_CHECK+=1))
        UPDATE_ENTRY_PLAYED=$($PSQL "UPDATE number_guess SET games_played=$PLAYED_CHECK WHERE username='$USERNAME';")
        BEST_CHECK=$($PSQL "SELECT best_game FROM number_guess WHERE username='$USERNAME'")
        if [[ $BEST_CHECK > $ROUNDS_PLAYED ]]
        then
          UPDATE_ENTRY_PLAYED=$($PSQL "UPDATE number_guess SET best_game=$ROUNDS_PLAYED WHERE username='$USERNAME';")
        fi  
      fi      
      echo "You guessed it in $ROUNDS_PLAYED tries. The secret number was $RANDOM_NUMBER. Nice job!"
      exit
  elif [[ $(($GUESS)) < $RANDOM_NUMBER ]]
    then
    echo "It's higher than that, guess again:"
  elif [[ $(($GUESS)) > $RANDOM_NUMBER ]]
    then
    echo "It's lower than that, guess again:"
  else
    break
  fi
done




                       

