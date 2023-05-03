#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
QUERY="SELECT atomic_number, symbol, name, atomic_mass, melting_point_celsius, boiling_point_celsius, type FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id)"

case "${1}" in
  1|H|Hydrogen)
    RESULT=$($PSQL "$QUERY WHERE atomic_number = 1")
    echo $RESULT | while IFS="|" read NUMBER SYMBOL NAME MASS MELTING BOILING TYPE; do
      echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done;;
  2|He|Helium)
    RESULT=$($PSQL "$QUERY WHERE atomic_number = 2")
    echo $RESULT | while IFS="|" read NUMBER SYMBOL NAME MASS MELTING BOILING TYPE; do
      echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done;;
  3|Li|Lithium)
    RESULT=$($PSQL "$QUERY WHERE atomic_number = 3")
    echo $RESULT | while IFS="|" read NUMBER SYMBOL NAME MASS MELTING BOILING TYPE; do
      echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done;;
  4|Be|Beryllium)
    RESULT=$($PSQL "$QUERY WHERE atomic_number = 4")
    echo $RESULT | while IFS="|" read NUMBER SYMBOL NAME MASS MELTING BOILING TYPE; do
      echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done;;
  5|B|Boron)
    RESULT=$($PSQL "$QUERY WHERE atomic_number = 5")
    echo $RESULT | while IFS="|" read NUMBER SYMBOL NAME MASS MELTING BOILING TYPE; do
      echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done;;
  6|C|Carbon)
    RESULT=$($PSQL "$QUERY WHERE atomic_number = 6")
    echo $RESULT | while IFS="|" read NUMBER SYMBOL NAME MASS MELTING BOILING TYPE; do
      echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done;;
  7|N|Nitrogen)
    RESULT=$($PSQL "$QUERY WHERE atomic_number = 7")
    echo $RESULT | while IFS="|" read NUMBER SYMBOL NAME MASS MELTING BOILING TYPE; do
      echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done;;
  8|O|Oxygen)
    RESULT=$($PSQL "$QUERY WHERE atomic_number = 8")
    echo $RESULT | while IFS="|" read NUMBER SYMBOL NAME MASS MELTING BOILING TYPE; do
      echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done;;
  9|F|Fluorine)
    RESULT=$($PSQL "$QUERY WHERE atomic_number = 9")
    echo $RESULT | while IFS="|" read NUMBER SYMBOL NAME MASS MELTING BOILING TYPE; do
      echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done;;
  10|Ne|Neon)
    RESULT=$($PSQL "$QUERY WHERE atomic_number = 10")
    echo $RESULT | while IFS="|" read NUMBER SYMBOL NAME MASS MELTING BOILING TYPE; do
      echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done;;
  '') echo Please provide an element as an argument.;;
  *) echo I could not find that element in the database.;;
esac
