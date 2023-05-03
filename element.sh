#!/bin/bash

case "${1}" in
  1|H|Hydrogen) exit;;
  2|He|Helium) exit;;
  3|Li|Lithium) exit;;
  4|Be|Beryllium) exit;;
  5|B|Boron) exit;;
  6|C|Carbon) exit;;
  7|N|Nitrogen) exit;;
  8|O|Oxygen) exit;;
  9|F|Fluorine) exit;;
  10|Ne|Neon) exit;;
  '') echo Please provide an element as an argument.;;
  *) echo I could not find that element in the database.;;
esac
