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

# Masculine to Feminine (English to Hindi)
declare -a masculine_feminine=(
"Actor - अभिनेत्री" "King - रानी" "Prince - राजकुमारी" "Father - माँ" "Brother - बहन"
"Husband - पत्नी" "Man - महिला" "Boy - लड़की" "Son - बेटी" "Uncle - आंटी"
"Grandfather - दादी" "Nephew - भांजी" "Grandson - पोती" "Male - महिला" "Gentleman - महिला"
"God - देवी" "Hero - हीरोइन" "Host - मेज़बान" "Bridegroom - दुल्हन" "Bachelor - कुंवारी"
"Father-in-law - सास" "Son-in-law - बहू" "Master - मालकिन" "Lord - देवी" "King - रानी"
"Emperor - साम्राज्ञी" "Steward - सेविका" "Brahmin - ब्राह्मणी" "Chairman - अध्यक्षा" "Shopkeeper - दुकानदार"
"Customer - ग्राहक" "Teacher - शिक्षिका" "Doctor - डॉ. महिला" "Scientist - वैज्ञानिक महिला" "Leader - नेतृ"
"Kingdom - रानी की भूमि" "Politician - महिला नेता" "Warrior - योद्धा महिला" "Scholar - विदुषी" "Writer - लेखिका"
"Author - लेखिका" "Patriarch - मातृप्रधान" "Partner - सहायक महिला" "Manager - महिला प्रबंधक" "Minister - महिला मंत्री"
)

# Pots Names (English to Hindi)
declare -a pots_names=(
"Flower Pot - फूल का बर्तन" "Clay Pot - मिट्टी का बर्तन" "Terracotta Pot - टेराकोटा बर्तन" "Plastic Pot - प्लास्टिक का बर्तन"
"Metal Pot - धातु का बर्तन" "Hanging Pot - झूलता बर्तन" "Ceramic Pot - सिरेमिक बर्तन" "Stone Pot - पत्थर का बर्तन"
"Garden Pot - बगिया का बर्तन" "Decorative Pot - सजावटी बर्तन"
)

# Flowers (English to Hindi)
declare -a flowers=(
"Rose - गुलाब" "Tulip - ट्यूलिप" "Lily - लिली" "Sunflower - सूरजमुखी" "Daffodil - डैफोडिल"
"Orchid - ऑर्किड" "Chrysanthemum - गुलदाउदी" "Marigold - गेंदे का फूल" "Jasmine - चमेली" "Lotus - कमल"
)

# Parts of the Body (English to Hindi)
declare -a body_parts=(
"Head - सिर" "Eye - आंख" "Nose - नाक" "Ear - कान" "Mouth - मुंह"
"Hand - हाथ" "Leg - पैर" "Arm - भुजा" "Foot - पैर का पंजा" "Heart - हृदय"
"Lungs - फेफड़े" "Liver - यकृत" "Stomach - पेट" "Brain - मस्तिष्क" "Teeth - दांत"
"Tongue - जीभ" "Hair - बाल" "Skin - त्वचा" "Bone - हड्डी" "Blood - रक्त"
"Finger - अंगुली" "Thumb - अंगूठा" "Knee - घुटना" "Elbow - कोहनी" "Shoulder - कंधा"
"Neck - गर्दन" "Chest - छाती" "Back - पीठ" "Waist - कमर" "Hip - नितंब"
"Thigh - जांघ" "Calf - पिंडली" "Ankle - टखना" "Toe - पैर की अंगुली" "Forehead - माथा"
"Cheek - गाल" "Chin - ठोड़ी" "Lips - होंठ" "Palm - हथेली" "Wrist - कलाई"
"Heel - एड़ी"
)

# Days of the Week (English to Hindi)
declare -a days=(
"Monday - सोमवार" "Tuesday - मंगलवार" "Wednesday - बुधवार" "Thursday - गुरुवार" 
"Friday - शुक्रवार" "Saturday - शनिवार" "Sunday - रविवार"
)

# Months of the Year (English to Hindi)
declare -a months=(
"January - जनवरी" "February - फरवरी" "March - मार्च" "April - अप्रैल"
"May - मई" "June - जून" "July - जुलाई" "August - अगस्त"
"September - सितंबर" "October - अक्टूबर" "November - नवंबर" "December - दिसंबर"
)

# Colors (English to Hindi)
declare -a colors=(
"Red - लाल" "Blue - नीला" "Green - हरा" "Yellow - पीला" "Black - काला"
"White - सफेद" "Pink - गुलाबी" "Orange - नारंगी" "Purple - बैंगनी" "Brown - भूरा"
"Gray - धूसर" "Golden - सुनहरा" "Silver - चांदी" "Beige - बेज" "Violet - बैंगनी"
"Indigo - नील" "Turquoise - फिरोजी" "Magenta - मैजेंटा" "Maroon - महरून" "Olive - जैतून"
)

# Vegetables (English to Hindi)
declare -a vegetables=(
"Potato - आलू" "Onion - प्याज" "Tomato - टमाटर" "Carrot - गाजर" "Cucumber - खीरा"
"Spinach - पालक" "Cauliflower - फूलगोभी" "Cabbage - बंदगोभी" "Peas - मटर" "Pumpkin - कद्दू"
"Brinjal - बैंगन" "Bottle Gourd - लौकी" "Radish - मूली" "Bitter Gourd - करेला" "Sweet Potato - शकरकंद"
"Beans - बीन्स" "Lettuce - सलाद" "Garlic - लहसुन" "Ginger - अदरक" "Chili - मिर्च"
"Okra - भिंडी" "Corn - मक्का" "Mushroom - मशरूम" "Zucchini - तोरी" "Turnip - शलजम"
)

# Fruits (English to Hindi)
declare -a fruits=(
"Apple - सेब" "Banana - केला" "Orange - संतर" "Grapes - अंगूर" "Mango - आम"
"Pineapple - अनानास" "Watermelon - तरबूज" "Papaya - पपीता" "Pomegranate - अनार" "Guava - अमरूद"
"Lychee - लीची" "Peach - आड़ू" "Pear - नाशपाती" "Plum - आलूबुखारा" "Cherry - चेरी"
"Strawberry - स्ट्रॉबेरी" "Apricot - खुमानी" "Coconut - नारियल" "Jackfruit - कटहल" "Custard Apple - शरीफा"
)

# Birds (English to Hindi)
declare -a birds=(
"Parrot - तोता" "Sparrow - गौरैया" "Pigeon - कबूतर" "Crow - कौआ" "Eagle - गरुड़"
"Owl - उल्लू" "Peacock - मोर" "Duck - बतख" "Penguin - पेंगुइन" "Kingfisher - मछली पकड़ने वाला पक्षी"
"Stork - सारस" "Swan - हंस" "Woodpecker - कठफोड़वा" "Vulture - गिद्ध" "Falcon - बाज"
)

# Metals (English to Hindi)
declare -a metals=(
"Gold - सोना" "Silver - चांदी" "Iron - लोहे" "Copper - तांबा" "Aluminum - एल्यूमिनियम"
"Lead - सीसा" "Zinc - जस्ता" "Platinum - प्लेटिनम" "Nickel - निकल" "Titanium - टाइटेनियम"
"Mercury - पारा" "Tin - टिन" "Chromium - क्रोमियम" "Magnesium - मैग्नीशियम" "Cobalt - कोबाल्ट"
"Antimony - ऐंटिमनी" "Manganese - मैंगनीज" "Bismuth - बिस्मथ" "Tungsten - टंगस्टन" "Rhodium - रोडियम"
)

# Crops (English to Hindi)
declare -a crops=(
"Wheat - गेहूं" "Rice - चावल" "Barley - जौ" "Maize - मक्का" "Sugarcane - गन्ना"
"Cotton - कपास" "Soybean - सोयाबीन" "Groundnut - मूंगफली" "Pea - मटर" "Mustard - सरसों"
"Chickpea - चना" "Pulses - दालें" "Lentils - मसूर दाल" "Millets - बाजरा" "Tobacco - तंबाकू"
"Tea - चाय" "Coffee - कॉफी" "Spices - मसाले" "Jute - जूट" "Sesame - तिल"
"Coconut - नारियल" "Rubber - रबड़" "Sunflower - सूरजमुखी" "Coriander - धनिया" "Mint - पुदीना"
"Cardamom - इलायची" "Turmeric - हल्दी" "Ginger - अदरक" "Garlic - लहसुन" "Onion - प्याज"
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
  echo "14. Exit"
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
    14) exit 0 ;;
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
    
