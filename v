#!/bin/bash

# Vocabulary Data

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
"बेटा - बेटी" "पिता - माता" "राजा - रानी" "गुरु - गुरुमाता" "नायक - नायिका"
)

# Pots Names
declare -a pots_names=(
"घड़ा - Pitcher" "लोटा - Small Pot" "कुल्हड़ - Clay Cup" "मटका - Earthen Pot" "बाल्टी - Bucket"
)

# Flowers
declare -a flowers=(
"गुलाब - Rose" "कमल - Lotus" "चमेली - Jasmine" "सूरजमुखी - Sunflower" "गेंदे का फूल - Marigold"
)

# Body Parts
declare -a body_parts=(
"सिर - Head" "आंखें - Eyes" "नाक - Nose" "कान - Ears" "हाथ - Hands"
"पैर - Feet" "दिल - Heart" "मुँह - Mouth" "बाल - Hair" "दांत - Teeth"
)

# Days of the Week
declare -a days=(
"सोमवार - Monday" "मंगलवार - Tuesday" "बुधवार - Wednesday" "गुरुवार - Thursday" "शुक्रवार - Friday"
"शनिवार - Saturday" "रविवार - Sunday"
)

# Months of the Year
declare -a months=(
"जनवरी - January" "फरवरी - February" "मार्च - March" "अप्रैल - April" "मई - May"
"जून - June" "जुलाई - July" "अगस्त - August" "सितंबर - September" "अक्टूबर - October"
"नवंबर - November" "दिसंबर - December"
)

# Colors
declare -a colors=(
"लाल - Red" "नीला - Blue" "हरा - Green" "पीला - Yellow" "सफेद - White"
"काला - Black" "गुलाबी - Pink" "भूरा - Brown" "बैंगनी - Purple" "नारंगी - Orange"
)

# Vegetables
declare -a vegetables=(
"आलू - Potato" "प्याज - Onion" "टमाटर - Tomato" "गाजर - Carrot" "मटर - Peas"
"बैंगन - Brinjal" "लौकी - Bottle Gourd" "कद्दू - Pumpkin" "पालक - Spinach" "मूली - Radish"
)

# Fruits
declare -a fruits=(
"सेब - Apple" "केला - Banana" "आम - Mango" "संतरा - Orange" "अनार - Pomegranate"
"अंगूर - Grapes" "पपीता - Papaya" "नाशपाती - Pear" "तरबूज - Watermelon" "अमरूद - Guava"
)

# Birds
declare -a birds=(
"तोता - Parrot" "कबूतर - Pigeon" "मुर्गी - Hen" "मोर - Peacock" "बुलबुल - Nightingale"
"गौरैया - Sparrow" "बाज - Hawk" "कौआ - Crow" "हंस - Swan" "पंखी - Bird"
)

# Metals
declare -a metals=(
"सोना - Gold" "चांदी - Silver" "लोहा - Iron" "तांबा - Copper" "पीतल - Brass"
)

# Crops
declare -a crops=(
"गेहूं - Wheat" "धान - Rice" "मक्का - Maize" "जौ - Barley" "गन्ना - Sugarcane"
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
  for i in "${
    
