#!/bin/bash

# Vocabulary arrays
declare -a english_opposites=(
  "Hot - Cold" "Light - Dark" "Big - Small" "Rich - Poor" "Happy - Sad"
  "Fast - Slow" "Hard - Soft" "Tall - Short" "Beautiful - Ugly"
)

declare -a masculine_feminine=(
  "King - Queen" "Actor - Actress" "Boy - Girl" "Father - Mother" "Brother - Sister"
  "Husband - Wife" "Son - Daughter" "Man - Woman"
)

declare -a pots_names=(
  "Clay Pot - मिट्टी का घड़ा" "Copper Pot - तांबे का घड़ा" "Brass Pot - पीतल का घड़ा"
  "Steel Pot - स्टील का बर्तन" "Earthen Pot - मटके"
)

declare -a flowers=(
  "Rose - गुलाब" "Tulip - ट्यूलिप" "Lily - लिली" "Sunflower - सूरजमुखी" "Jasmine - चमेली"
  "Daisy - गुलबहार" "Marigold - गेंदा"
)

declare -a body_parts=(
  "Head - सिर" "Hand - हाथ" "Leg - पैर" "Eye - आंख" "Ear - कान" "Mouth - मुंह"
  "Nose - नाक" "Heart - दिल"
)

declare -a days=(
  "Monday - सोमवार" "Tuesday - मंगलवार" "Wednesday - बुधवार" "Thursday - गुरुवार"
  "Friday - शुक्रवार" "Saturday - शनिवार" "Sunday - रविवार"
)

declare -a months=(
  "January - जनवरी" "February - फरवरी" "March - मार्च" "April - अप्रैल" "May - मई"
  "June - जून" "July - जुलाई" "August - अगस्त" "September - सितंबर" "October - अक्टूबर"
  "November - नवम्बर" "December - दिसम्बर"
)

# Hindi months
declare -a hindi_months=(
  "Chaitra - चैत्र" "Vaishakha - वैशाख" "Jyeshtha - ज्येष्ठ" "Ashadha - आषाढ़"
  "Shravana - श्रावण" "Bhadrapada - भाद्रपद" "Ashwin - आश्विन" "Kartika - कार्तिक"
  "Agrahayana - अग्रहायण" "Pausa - पौष" "Magha - माघ" "Phalguna - फाल्गुन"
)

declare -a colors=(
  "Red - लाल" "Green - हरा" "Blue - नीला" "Yellow - पीला" "Black - काला" "White - सफेद"
  "Pink - गुलाबी" "Purple - बैंगनी"
)

declare -a vegetables=(
  "Potato - आलू" "Tomato - टमाटर" "Onion - प्याज" "Carrot - गाजर" "Cabbage - पत्तागोभी"
  "Cauliflower - फूलगोभी" "Peas - मटर"
)

declare -a fruits=(
  "Apple - सेब" "Banana - केला" "Mango - आम" "Grapes - अंगूर" "Orange - संतरा"
  "Pineapple - अनानास" "Papaya - पपीता"
)

declare -a birds=(
  "Eagle - गरुड़" "Sparrow - गौरैया" "Pigeon - कबूतर" "Peacock - मोर" "Crow - कौआ"
)

declare -a metals=(
  "Gold - सोना" "Silver - चांदी" "Copper - तांबा" "Iron - लोहे" "Aluminum - एल्युमिनियम"
)

declare -a crops=(
  "Wheat - गेहूं" "Rice - चावल" "Maize - मक्का" "Sugarcane - गन्ना" "Cotton - कपास"
)

declare -a clothes=(
  "Shirt - शर्ट" "Pants - पैंट" "Saree - साड़ी" "Suit - सूट" "T-shirt - टी-शर्ट"
)

declare -a classroom_things=(
  "Desk - डेस्क" "Chair - कुर्सी" "Blackboard - ब्लैकबोर्ड" "Marker - मार्कर" "Eraser - रबड़"
)

declare -a kitchen_tools=(
  "Knife - चाकू" "Fork - कांटा" "Spoon - चमच" "Pan - कढ़ाई" "Plate - थाली"
)

declare -a hospital_tools=(
  "Syringe - सिरिंज" "Stethoscope - स्टेथोस्कोप" "Thermometer - थर्मामीटर"
  "Bandage - पट्टी" "Scalpel - चाकू"
)

declare -a medicinal_plants=(
  "Tulsi - तुलसी" "Neem - नीम" "Aloe Vera - ऐलोवेरा" "Mint - पुदीना" "Ginger - अदरक"
)

declare -a oxygen_plants=(
  "Bamboo - बांस" "Aloe Vera - ऐलोवेरा" "Snake Plant - सांप पौधा" "Peace Lily - पीस लिली"
)

declare -a food_grains=(
  "Wheat - गेहूं" "Rice - चावल" "Barley - जौ" "Maize - मक्का" "Oats - ओट्स"
)

declare -a pet_animals=(
  "Dog - कुत्ता" "Cat - बिल्ली" "Rabbit - खरगोश" "Fish - मछली" "Hamster - हैम्स्टर"
)

declare -a wild_animals=(
  "Lion - शेर" "Tiger - बाघ" "Elephant - हाथी" "Leopard - तेंदुआ" "Bear - भालू"
)

declare -a terrestrial_animals=(
  "Dog - कुत्ता" "Cat - बिल्ली" "Horse - घोड़ा" "Goat - बकरी" "Sheep - भेड़"
)

declare -a aquatic_animals=(
  "Fish - मछली" "Shark - शार्क" "Whale - व्हेल" "Dolphin - डॉल्फिन" "Octopus - ऑक्टोपस"
)

declare -a aerial_animals=(
  "Eagle - गरुड़" "Sparrow - गौरैया" "Parrot - तोता" "Hawk - बाज" "Owl - उल्लू"
)

declare -a poisonous_plants=(
  "Aconite - आकॉनाइट" "Oleander - कनेर" "Castor - अरंडी" "Belladonna - बेलाडोना"
)

declare -a wooden_objects=(
  "Table - मेज" "Chair - कुर्सी" "Cabinet - अलमारी" "Bed - बिस्तर" "Door - दरवाजा"
)

declare -a transport_vehicles=(
  "Transport - refers to the movement of goods or people from one place to another using various vehicles such as cars, buses, bicycles, trains, ships, or airplanes."
  "Car - कार" "Bus - बस" "Train - ट्रेन" "Bicycle - साइकिल" "Ship - जहाज"
  "Airplane - हवाई जहाज" "Truck - ट्रक" "Motorcycle - मोटरसाइकिल" "Rickshaw - रिक्शा"
  "Helicopter - हेलीकॉप्टर" "Boat - नाव" "Submarine - पनडुब्बी" "Tram - ट्राम" "Scooter - स्कूटर"
  "Skateboard - स्केटबोर्ड" "Horse Cart - घोड़े की गाड़ी" "Cable Car - केबल कार"
  "Hot Air Balloon - हॉट एयर बैलून" "Segway - सेगवे" "Lorry - लॉरी"
)

# Seasons names array
declare -a seasons=(
  "Spring - वसंत" "Summer - गर्मी" "Monsoon - वर्षा" "Autumn - शरद"
)

# Function to show the vocabulary list
show_vocabulary() {
  category=$1
  shift
  echo -e "\n$category Vocabulary:"
  for word in "$@"; do
    echo "$word"
  done
  echo ""
  read -p "Press any key to go back to the main menu..." -n1 -s
  show_main_menu
}

# Main menu
show_main_menu() {
  clear
  echo "Select a category:"
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
  echo "16. Kitchen Tools"
  echo "17. Hospital Tools"
  echo "18. Medicinal Plants"
  echo "19. Oxygen-Producing Plants"
  echo "20. Food Grains"
  echo "21. Pet Animals"
  echo "22. Wild Animals"
  echo "23. Terrestrial Animals"
  echo "24. Aquatic Animals"
  echo "25. Aerial Animals"
  echo "26. Poisonous Plants"
  echo "27. Wooden Objects"
  echo "28. Transport"
  echo "29. Seasons"
  echo "30. Exit"

  read -p "Enter your choice: " choice

  case $choice in
    1) show_vocabulary "Opposites" "${english_opposites[@]}" ;;
    2) show_vocabulary "Masculine to Feminine" "${masculine_feminine[@]}" ;;
    3) show_vocabulary "Pots Names" "${pots_names[@]}" ;;
    4) show_vocabulary "Flowers" "${flowers[@]}" ;;
    5) show_vocabulary "Body Parts" "${body_parts[@]}" ;;
    6) show_vocabulary "Days of the Week" "${days[@]}" ;;
    7) show_vocabulary "Months of the Year" "${months[@]}" ;;
    8) show_vocabulary "Colors" "${colors[@]}" ;;
    9) show_vocabulary "Vegetables" "${vegetables[@]}" ;;
    10) show_vocabulary "Fruits" "${fruits[@]}" ;;
    11) show_vocabulary "Birds" "${birds[@]}" ;;
    12) show_vocabulary "Metals" "${metals[@]}" ;;
    13) show_vocabulary "Crops" "${crops[@]}" ;;
    14) show_vocabulary "Clothes" "${clothes[@]}" ;;
    15) show_vocabulary "Classroom Things" "${classroom_things[@]}" ;;
    16) show_vocabulary "Kitchen Tools" "${kitchen_tools[@]}" ;;
    17) show_vocabulary "Hospital Tools" "${hospital_tools[@]}" ;;
    18) show_vocabulary "Medicinal Plants" "${medicinal_plants[@]}" ;;
    19) show_vocabulary "Oxygen-Producing Plants" "${oxygen_plants[@]}" ;;
    20) show_vocabulary "Food Grains" "${food_grains[@]}" ;;
    21) show_vocabulary "Pet Animals" "${pet_animals[@]}" ;;
    22) show_vocabulary "Wild Animals" "${wild_animals[@]}" ;;
    23) show_vocabulary "Terrestrial Animals" "${terrestrial_animals[@]}" ;;
    24) show_vocabulary "Aquatic Animals" "${aquatic_animals[@]}" ;;
    25) show_vocabulary "Aerial Animals" "${aerial_animals[@]}" ;;
    26) show_vocabulary "Poisonous Plants" "${poisonous_plants[@]}" ;;
    27) show_vocabulary "Wooden Objects" "${wooden_objects[@]}" ;;
    28) show_vocabulary "Transport" "${transport_vehicles[@]}" ;;
    29) show_vocabulary "Seasons" "${seasons[@]}" ;;  # Show Seasons option
    30) exit ;;
    *) echo "Invalid option, try again." ;;
  esac
}

# Run the script
show_main_menu
