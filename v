#!/bin/bash

# Vocabulary Data
declare -a hindi_opposites=( ... ) # Predefined opposites
declare -a english_opposites=( ... ) # Predefined opposites
declare -a verbs=( ... ) # Predefined verbs

# Solar Family (English to Hindi)
declare -a solar_family=(
"Sun - सूर्य" "Mercury - बुध" "Venus - शुक्र" "Earth - पृथ्वी" "Mars - मंगल"
"Jupiter - बृहस्पति" "Saturn - शनि" "Uranus - अरुण" "Neptune - वरुण"
)

# Main Menu
show_main_menu() {
  clear
  echo "Vocabulary Lists"
  echo "1. Opposites"
  echo "2. Masculine to Feminine"
  echo "3. Pots Names"
  echo "4. Flowers"
  echo "5. Body Parts"
  echo "6. Days of the Week"
  echo "7. Months of the Year"
  echo "8. Colors"
  echo "9. Vegetables"
  echo "10. Fruits"
  echo "11. Birds"
  echo "12. Metals"
  echo "13. Crops"
  echo "14. Verbs"
  echo "15. Solar Family"
  echo "16. Exit"
  read -p "Please select an option: " option

  case $option in
    1) show_vocabulary "Opposites" "english_opposites" "hindi_opposites" ;;
    2) show_vocabulary "Masculine to Feminine" "masculine_feminine" "masculine_feminine" ;;
    3) show_vocabulary "Pots Names" "pots_names" "pots_names" ;;
    4) show_vocabulary "Flowers" "flowers" "flowers" ;;
    5) show_vocabulary "Body Parts" "body_parts" "body_parts" ;;
    6) show_vocabulary "Days of the Week" "days" "days" ;;
    7) show_vocabulary "Months of the Year" "months" "months" ;;
    8) show_vocabulary "Colors" "colors" "colors" ;;
    9) show_vocabulary "Vegetables" "vegetables" "vegetables" ;;
    10) show_vocabulary "Fruits" "fruits" "fruits" ;;
    11) show_vocabulary "Birds" "birds" "birds" ;;
    12) show_vocabulary "Metals" "metals" "metals" ;;
    13) show_vocabulary "Crops" "crops" "crops" ;;
    14) show_vocabulary "Verbs" "verbs" "verbs" ;;
    15) show_vocabulary "Solar Family" "solar_family" "solar_family" ;;
    16) exit 0 ;;
    *) echo "Invalid option, please try again." ;;
  esac
}

# Vocabulary Display Function
show_vocabulary() {
  local category=$1
  local english_array=$2
  local hindi_array=$3

  clear
  echo "$category"
  eval "english_list=( \${$english_array[@]} )"
  eval "hindi_list=( \${$hindi_array[@]} )"
  for i in "${!english_list[@]}"; do
    echo "${english_list[$i]} - ${hindi_list[$i]}"
  done
  read -p "Press any key to return to the main menu..." anykey
  show_main_menu
}

# Start Script
show_main_menu
    
