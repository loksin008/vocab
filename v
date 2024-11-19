#!/bin/bash

# Vocabulary data

# Opposites
declare -a hindi_opposites=(
"अच्छा - बुरा" "बड़ा - छोटा" "खुश - दुखी" "सुंदर - कुरूप" "तेज़ - धीमा"
"शांत - शोर" "धन - गरीबी" "उज्ज्वल - अंधकार" "जीवन - मृत्यु" "सच - झूठ"
)
declare -a english_opposites=(
"Good - Bad" "Big - Small" "Happy - Sad" "Beautiful - Ugly" "Fast - Slow"
"Quiet - Noisy" "Rich - Poor" "Bright - Dark" "Life - Death" "True - False"
)

# Masculine to Feminine
declare -a masculine_feminine=(
"Boy - Girl" "King - Queen" "Lion - Lioness" "Actor - Actress" "Man - Woman"
"Father - Mother" "Brother - Sister" "Husband - Wife" "Son - Daughter" "Prince - Princess"
)

# Pots Names
declare -a pots_names=(
"कुल्हड़ - Kulhad" "घड़ा - Ghada" "मटका - Matka" "सुराही - Surahi" "हंडा - Handa"
)

# Flowers
declare -a flowers=(
"Rose - गुलाब" "Lotus - कमल" "Marigold - गेंदा" "Jasmine - चमेली" "Hibiscus - गुड़हल"
)

# Body Parts
declare -a body_parts=(
"Hand - हाथ" "Leg - पैर" "Head - सिर" "Eye - आँख" "Ear - कान"
"Nose - नाक" "Mouth - मुँह" "Fingers - उंगलियाँ" "Stomach - पेट" "Heart - हृदय"
)

# Days of the Week
declare -a days=(
"Sunday - रविवार" "Monday - सोमवार" "Tuesday - मंगलवार" "Wednesday - बुधवार" 
"Thursday - गुरुवार" "Friday - शुक्रवार" "Saturday - शनिवार"
)

# Months of the Year
declare -a months=(
"January - जनवरी" "February - फरवरी" "March - मार्च" "April - अप्रैल" 
"May - मई" "June - जून" "July - जुलाई" "August - अगस्त" 
"September - सितंबर" "October - अक्टूबर" "November - नवंबर" "December - दिसंबर"
)

# Colors
declare -a colors=(
"Red - लाल" "Blue - नीला" "Green - हरा" "Yellow - पीला" "White - सफेद"
"Black - काला" "Pink - गुलाबी" "Orange - नारंगी" "Purple - बैंगनी" "Brown - भूरा"
)

# Vegetables
declare -a vegetables=(
"Potato - आलू" "Tomato - टमाटर" "Onion - प्याज" "Carrot - गाजर" "Spinach - पालक"
)

# Fruits
declare -a fruits=(
"Apple - सेब" "Banana - केला" "Mango - आम" "Orange - संतरा" "Grapes - अंगूर"
)

# Birds
declare -a birds=(
"Sparrow - गौरेया" "Crow - कौआ" "Peacock - मोर" "Parrot - तोता" "Pigeon - कबूतर"
)

# Metals
declare -a metals=(
"Gold - सोना" "Silver - चांदी" "Iron - लोहा" "Copper - तांबा" "Aluminum - एल्युमिनियम"
)

# Crops
declare -a crops=(
"Wheat - गेहूं" "Rice - चावल" "Corn - मक्का" "Sugarcane - गन्ना" "Cotton - कपास"
)

# Verbs
declare -a verbs=(
"Run - दौड़ना" "Walk - चलना" "Eat - खाना" "Drink - पीना" "Sleep - सोना"
"Write - लिखना" "Read - पढ़ना" "Speak - बोलना" "Listen - सुनना" "Sit - बैठना"
)

# Display menus for user
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
  echo "15. Exit"
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
    15) exit 0 ;;
    *) 
      echo "Invalid option, please try again."
      read -p "Press any key to return to the main menu..." anykey
      show_main_menu
      ;;
  esac
}

# Function to display the vocabulary list
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

# Run the script
show_main_menu
    
