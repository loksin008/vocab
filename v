#!/bin/bash

# Vocabulary Data

# Definitions with examples
declare -a noun_def=(
"A noun is the name of a person, place, thing, or idea."
"Examples:"
"1. Ram" "2. Delhi" "3. Apple" "4. Honesty" "5. Mountain"
"6. Teacher" "7. School" "8. Book" "9. River" "10. Dog"
)

declare -a pronoun_def=(
"A pronoun is a word used in place of a noun."
"Examples:"
"1. He" "2. She" "3. It" "4. They" "5. We"
"6. You" "7. This" "8. That" "9. Who" "10. Someone"
)

declare -a verb_def=(
"A verb is a word that expresses an action, occurrence, or state of being."
"Examples:"
"1. Run" "2. Walk" "3. Eat" "4. Think" "5. Sleep"
"6. Write" "7. Speak" "8. Jump" "9. Sing" "10. Play"
)

declare -a adverb_def=(
"An adverb is a word that modifies a verb, an adjective, or another adverb."
"Examples:"
"1. Quickly" "2. Slowly" "3. Silently" "4. Very" "5. Too"
"6. Always" "7. Often" "8. Now" "9. Yesterday" "10. Here"
)

declare -a adjective_def=(
"An adjective is a word that describes or modifies a noun or pronoun."
"Examples:"
"1. Beautiful" "2. Large" "3. Small" "4. Happy" "5. Sad"
"6. Red" "7. Tall" "8. Bright" "9. Cold" "10. Hot"
)

declare -a conjunction_def=(
"A conjunction is a word used to connect words, phrases, or clauses."
"Examples:"
"1. And" "2. But" "3. Or" "4. So" "5. Because"
"6. While" "7. Although" "8. When" "9. If" "10. Unless"
)

declare -a interjection_def=(
"An interjection is a word or phrase that expresses strong emotion."
"Examples:"
"1. Oh!" "2. Wow!" "3. Ouch!" "4. Hey!" "5. Alas!"
"6. Hurrah!" "7. Bravo!" "8. Hurray!" "9. Ah!" "10. Eww!"
)

# Vocabulary Categories

declare -a english_opposites=("Good - Bad" "Big - Small" "Happy - Sad" "Beautiful - Ugly" "Fast - Slow")
declare -a hindi_opposites=("अच्छा - बुरा" "बड़ा - छोटा" "खुश - दुखी" "सुंदर - कुरूप" "तेज़ - धीमा")

declare -a masculine_feminine=("Boy - Girl" "King - Queen" "Lion - Lioness" "Man - Woman" "Husband - Wife")
declare -a pots_names=("कुल्हड़ - Kulhad" "घड़ा - Ghada" "मटका - Matka" "सुराही - Surahi" "हंडा - Handa")
declare -a flowers=("Rose - गुलाब" "Lotus - कमल" "Marigold - गेंदा" "Jasmine - चमेली" "Hibiscus - गुड़हल")
declare -a body_parts=("Hand - हाथ" "Leg - पैर" "Head - सिर" "Eye - आँख" "Ear - कान")
declare -a days=("Sunday - रविवार" "Monday - सोमवार" "Tuesday - मंगलवार" "Wednesday - बुधवार" "Thursday - गुरुवार")
declare -a months=("January - जनवरी" "February - फरवरी" "March - मार्च" "April - अप्रैल" "May - मई")
declare -a colors=("Red - लाल" "Blue - नीला" "Green - हरा" "Yellow - पीला" "White - सफेद")
declare -a vegetables=("Potato - आलू" "Tomato - टमाटर" "Onion - प्याज" "Carrot - गाजर" "Spinach - पालक")
declare -a fruits=("Apple - सेब" "Banana - केला" "Mango - आम" "Orange - संतरा" "Grapes - अंगूर")
declare -a birds=("Sparrow - गौरेया" "Crow - कौआ" "Peacock - मोर" "Parrot - तोता" "Pigeon - कबूतर")
declare -a metals=("Gold - सोना" "Silver - चांदी" "Iron - लोहा" "Copper - तांबा" "Aluminum - एल्युमिनियम")
declare -a crops=("Wheat - गेहूं" "Rice - चावल" "Corn - मक्का" "Sugarcane - गन्ना" "Cotton - कपास")
declare -a clothes=("Shirt - शर्ट" "Pants - पैंट" "Saree - साड़ी" "Jacket - जैकेट" "Trousers - पतलून")
declare -a classroom_things=("Chalk - चाक" "Board - बोर्ड" "Desk - डेस्क" "Chair - कुर्सी" "Notebook - नोटबुक")

# Function to display vocabulary
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

# Function to display grammar definitions
show_definitions() {
  local category=$1
  local definition_array=$2

  clear
  echo "$category"
  eval "definition_list=( \${$definition_array[@]} )"
  for line in "${definition_list[@]}"; do
    echo "$line"
  done
  read -p "Press any key to return to the main menu..." anykey
  show_main_menu
}

# Main Menu
show_main_menu() {
  clear
  echo "Vocabulary and Grammar Menu"
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
  echo "14. Clothes"
  echo "15. Classroom Things"
  echo "16. Grammar Definitions"
  echo "17. Exit"
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
    14) show_vocabulary "Clothes" "clothes" "clothes" ;;
    15) show_vocabulary "Classroom Things" "classroom_things" "classroom_things" ;;
    16) 
      echo "Grammar Definitions"
      echo "1. Noun"
      echo "2. Pronoun"
      echo "3. Verb"
      echo "4. Adverb"
      echo "5. Adjective"
      echo "6. Conjunction"
      echo "7. Interjection"
      echo "8. Back to Main Menu"
      read -p "Please select a grammar topic: " grammar_option

      case $grammar_option in
        1) show_definitions "Noun Definition and Examples" "noun_def" ;;
        2) show_definitions "Pronoun Definition and Examples" "pronoun_def" ;;
        3) show_definitions "Verb Definition and Examples" "verb_def" ;;
        4) show_definitions "Adverb Definition and Examples" "adverb_def" ;;
        5) show_definitions "Adjective Definition and Examples" "adjective_def" ;;
        6) show_definitions "Conjunction Definition and Examples" "conjunction_def" ;;
        7) show_definitions "Interjection Definition and Examples" "interjection_def" ;;
        8) show_main_menu ;;
        *) 
          echo "Invalid option, please try again."
          read -p "Press any key to return to the grammar menu..." anykey
          show_main_menu
          ;;
      esac
      ;;
    17) exit 0 ;;
    *) 
      echo "Invalid option, please try again."
      read -p "Press any key to return to the main menu..." anykey
      show_main_menu
      ;;
  esac
}

# Run the script
show_main_menu
        
