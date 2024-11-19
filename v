#!/bin/bash

# Vocabulary Data
declare -a hindi_opposites=( ... ) # Predefined opposites
declare -a english_opposites=( ... ) # Predefined opposites
declare -a verbs=( ... ) # Predefined verbs
declare -a birds=( ... ) # Predefined birds
declare -a solar_family=( ... ) # Solar family
declare -a national_symbols=( ... ) # National symbols

# 24-Hour Oxygen-Giving Plants (English to Hindi)
declare -a oxygen_plants=(
  "Areca Palm - अरेका पाम"
  "Snake Plant - सर्प पौधा"
  "Neem - नीम"
  "Tulsi - तुलसी"
  "Aloe Vera - एलोवेरा"
  "Peepal Tree - पीपल"
  "Banyan Tree - बरगद"
  "Money Plant - मनी प्लांट"
  "Spider Plant - स्पाइडर प्लांट"
  "Chinese Evergreen - चाइनीज एवरग्रीन"
  "Weeping Fig - वीकिंग फिग"
  "Gerbera Daisy - गेरबेरा डेज़ी"
  "Christmas Cactus - क्रिसमस कैक्टस"
  "Rubber Plant - रबर प्लांट"
  "Philodendron - फिलोडेंड्रोन"
  "Peace Lily - पीस लिली"
  "Bamboo Palm - बांस पाम"
  "Golden Pothos - गोल्डन पाथोस"
  "Gardenia - गार्डेनिया"
  "Coconut Tree - नारियल का पेड़"
  "Indian Basil - तुलसी"
  "Ashoka Tree - अशोक का पेड़"
  "Jamun Tree - जामुन का पेड़"
  "Holy Basil - पवित्र तुलसी"
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
  echo "16. India National Symbols"
  echo "17. 24-Hour Oxygen-Giving Plants"
  echo "18. Exit"
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
    16) show_vocabulary "India National Symbols" "national_symbols" "national_symbols" ;;
    17) show_vocabulary "24-Hour Oxygen-Giving Plants" "oxygen_plants" "oxygen_plants" ;;
    18) exit 0 ;;
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
    
