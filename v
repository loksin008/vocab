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

# Medicinal Plants (English to Hindi)
declare -a medicinal_plants=(
"Tulsi - तुलसी" "Neem - नीम" "Aloe Vera - घृतकुमारी" "Ashwagandha - अश्वगंधा" "Brahmi - ब्राह्मी"
"Giloy - गिलोय" "Turmeric - हल्दी" "Fenugreek - मेथी" "Peppermint - पुदीना" "Coriander - धनिया"
"Indian Gooseberry (Amla) - आंवला" "Sandalwood - चंदन" "Clove - लौंग" "Cinnamon - दालचीनी" "Fennel - सौंफ"
"Holy Basil - पवित्र तुलसी" "Lemongrass - नींबू घास" "Black Pepper - काली मिर्च" "Cardamom - इलायची" "Garlic - लहसुन"
"Ginger - अदरक" "Onion - प्याज" "Curry Leaves - कड़ी पत्ता" "Betel Leaves - पान" "Chamomile - कैमोमाइल"
)

# Plants that Provide Oxygen 24 Hours (English to Hindi)
declare -a oxygen_plants=(
"Areca Palm - अरेका पाम" "Snake Plant - स्नेक प्लांट" "Tulsi - तुलसी" "Neem - नीम" "Aloe Vera - घृतकुमारी"
"Peepal Tree - पीपल का पेड़" "Christmas Cactus - क्रिसमस कैक्टस" "Orchid - ऑर्किड" "Money Plant - मनी प्लांट"
"Rubber Plant - रबर प्लांट" "Spider Plant - स्पाइडर प्लांट" "Banyan Tree - बरगद का पेड़" "Gerbera Daisy - गेंदा डेज़ी"
"Chinese Evergreen - चाइनीज एवरग्रीन" "Sacred Fig - बरगद का पवित्र पेड़" "Corn Plant - कॉर्न प्लांट"
"Cactus - कैक्टस" "Ficus Plant - फिकस प्लांट" "Banana Plant - केले का पेड़" "Pine Tree - देवदार"
)

# Other categories (dummy data placeholders for now)
declare -a masculine_feminine=("Male - Female" "पुरुष - महिला")
declare -a pots_names=("Clay Pot - मटका" "Steel Pot - स्टील का बर्तन")
declare -a flowers=("Rose - गुलाब" "Lotus - कमल")
declare -a body_parts=("Head - सिर" "Hand - हाथ")
declare -a days=("Sunday - रविवार" "Monday - सोमवार")
declare -a months=("January - जनवरी" "February - फरवरी")
declare -a colors=("Red - लाल" "Blue - नीला")
declare -a vegetables=("Potato - आलू" "Tomato - टमाटर")
declare -a fruits=("Apple - सेब" "Banana - केला")
declare -a birds=("Parrot - तोता" "Sparrow - गौरैया")
declare -a metals=("Gold - सोना" "Silver - चांदी")
declare -a crops=("Wheat - गेहूं" "Rice - चावल")

# Verbs (English to Hindi)
declare -a verbs=(
"Run - दौड़ना" "Walk - चलना" "Eat - खाना" "Drink - पीना" "Sleep - सोना"
"Write - लिखना" "Read - पढ़ना" "Speak - बोलना" "Listen - सुनना" "Sit - बैठना"
"Stand - खड़ा होना" "Open - खोलना" "Close - बंद करना" "Play - खेलना" "Jump - कूदना"
"Swim - तैरना" "Laugh - हंसना" "Cry - रोना" "Dance - नृत्य करना" "Sing - गाना"
"Think - सोचना" "Learn - सीखना" "Teach - पढ़ाना" "Work - काम करना" "Drive - चलाना"
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
  echo "15. Medicinal Plants"
  echo "16. Plants that Provide Oxygen 24 Hours"
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
    14) show_vocabulary "Verbs" "verbs" "verbs" ;;
    15) show_vocabulary "Medicinal Plants" "medicinal_plants" "medicinal_plants" ;;
    16) show_vocabulary "Plants that Provide Oxygen 24 Hours" "oxygen_plants" "oxygen_plants" ;;
    17) exit 0 ;;
    *) echo "Invalid option, please try again." ;;
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
    
