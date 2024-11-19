#!/bin/bash

# Vocabulary data
declare -a hindi_opposites=(
"अच्छा - बुरा" "बड़ा - छोटा" "खुश - दुखी" "सुंदर - कुरूप" "तेज़ - धीमा"
"शांत - शोर" "धन - गरीबी" "उज्ज्वल - अंधकार" "जीवन - मृत्यु" "सच - झूठ"
"सूरज - चाँद" "आग - पानी" "प्रेम - नफरत" "नया - पुराना" "प्रकाश - अंधेरा"
"आसान - कठिन" "दिन - रात" "प्यार - घृणा" "स्वास्थ्य - बीमारी" "शांति - युद्ध"
"जीत - हार" "अमीर - गरीब" "धनी - निर्धन" "दोस्त - दुश्मन" "स्वर्ग - नरक"
"खुशबू - बदबू" "लंबा - छोटा" "मजबूत - कमजोर" "ठंडा - गरम" "शक्ति - कमजोरी"
"सपना - हकीकत" "सकारात्मक - नकारात्मक" "बाहर - अंदर" "उजाला - अंधेरा" "धूप - छाँव"
"सच - झूठ" "पहाड़ - घाटी" "जल्दी - देरी" "उच्च - निम्न" "लाभ - हानि"
"शक्ति - दुर्बलता" "स्वच्छ - गंदा" "कठिन - सरल" "जन्म - मृत्यु" "बुद्धिमान - मूर्ख"
"सर्दी - गर्मी" "मधुर - कड़वा" "प्रेमी - घृणास्पद" "निर्मल - अशांत" "शुद्ध - अशुद्ध"
)

declare -a english_opposites=(
"Good - Bad" "Big - Small" "Happy - Sad" "Beautiful - Ugly" "Fast - Slow"
"Quiet - Noisy" "Rich - Poor" "Bright - Dark" "Life - Death" "True - False"
"Sun - Moon" "Fire - Water" "Love - Hate" "New - Old" "Light - Darkness"
"Easy - Hard" "Day - Night" "Love - Hate" "Health - Illness" "Peace - War"
"Win - Lose" "Rich - Poor" "Wealthy - Poor" "Friend - Enemy" "Heaven - Hell"
"Sweet - Sour" "Tall - Short" "Strong - Weak" "Cold - Hot" "Power - Weakness"
"Dream - Reality" "Positive - Negative" "Outside - Inside" "Light - Dark" "Sunshine - Shade"
"True - False" "Mountain - Valley" "Early - Late" "High - Low" "Profit - Loss"
"Strength - Weakness" "Clean - Dirty" "Hard - Soft" "Birth - Death" "Wise - Foolish"
"Cold - Warm" "Sweet - Bitter" "Lover - Hater" "Pure - Impure"
)

# Verbs (English to Hindi)
declare -a verbs=(
"Run - दौड़ना" "Walk - चलना" "Eat - खाना" "Drink - पीना" "Sleep - सोना"
"Write - लिखना" "Read - पढ़ना" "Speak - बोलना" "Listen - सुनना" "Sit - बैठना"
"Stand - खड़ा होना" "Open - खोलना" "Close - बंद करना" "Play - खेलना" "Jump - कूदना"
"Swim - तैरना" "Laugh - हंसना" "Cry - रोना" "Dance - नृत्य करना" "Sing - गाना"
"Think - सोचना" "Learn - सीखना" "Teach - पढ़ाना" "Work - काम करना" "Drive - चलाना"
"Fly - उड़ना" "Throw - फेंकना" "Catch - पकड़ना" "Give - देना" "Take - लेना"
"Buy - खरीदना" "Sell - बेचना" "Love - प्यार करना" "Hate - नफरत करना" "Help - मदद करना"
"Climb - चढ़ना" "Fall - गिरना" "Push - धक्का देना" "Pull - खींचना" "Break - तोड़ना"
"Fix - ठीक करना" "Build - बनाना" "Cook - पकाना" "Wash - धोना" "Clean - साफ करना"
"Drive - गाड़ी चलाना" "Ride - सवारी करना" "Hide - छिपाना" "Show - दिखाना" "Ask - पूछना"
"Answer - उत्तर देना"
)

# Solar Family (Sun and Planets)
declare -a solar_family=(
"Sun - सूर्य" "Mercury - बुध" "Venus - शुक्र" "Earth - पृथ्वी" "Mars - मंगल"
"Jupiter - बृहस्पति" "Saturn - शनि" "Uranus - यूरेनस" "Neptune - वरुण"
)

# Display menus for user
show_main_menu() {
  clear
  echo "Vocabulary Lists"
  echo "1. Opposites"
  echo "2. Verbs"
  echo "3. Solar Family"
  echo "4. Exit"
  read -p "Please select an option: " option

  case $option in
    1) show_vocabulary "Opposites" "english_opposites" "hindi_opposites" ;;
    2) show_vocabulary "Verbs" "verbs" "verbs" ;;
    3) show_vocabulary "Solar Family" "solar_family" "solar_family" ;;
    4) exit 0 ;;
    *) echo "Invalid option, please try again." ;;
  esac
}

# Function to display the vocabulary list
show_vocabulary() {
  local category=$1
  local array_name=$2

  clear
  echo "$category"
  eval "list=( \${$array_name[@]} )"
  for item in "${list[@]}"; do
    echo "$item"
  done
  read -p "Press any key to return to the main menu..." anykey
  show_main_menu
}

# Run the script
show_main_menu
    
